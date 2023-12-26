const { Category } = require('../models/models')
const ApiError = require('../error/ApiError')

class CategoryController {
    async create(req, res) {
        try {
            const { name } = req.body;
            const category = await Category.create({ name });
            return res.json(category);
        } catch (error) {
            if (error.name === 'SequelizeUniqueConstraintError') {
                return res.status(400).json({ error: 'Category with this name already exists' });
            }
            console.error('Error creating category:', error);
            return res.status(500).json({ error: 'Failed to create category' });
        }
    }

    async getAll(req, res) {
        const categories = await Category.findAll()
        return res.json(categories)
    }

    async delete(req, res) {
        const { id } = req.params
        await Category.destroy({ where: { id } })
        return res.json({ message: 'Категория успешно удалена' })
    }
}

module.exports = new CategoryController()