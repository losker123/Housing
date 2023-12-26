import React, { useState } from "react"
import { Alert, Modal } from "react-bootstrap"
import { Button, Form } from 'react-bootstrap';
import { createCategory } from '../http/categoryApi';

const AddCategory = ({ show = false, hide }) => {
    const [name, setName] = useState()
    const [error, setError] = useState(false)

    const addCategory = () => {
        createCategory({ name: name }).then(data => {
            setName('')
            hide()
        }).catch(error => {
            setError(true)
            console.error('Ошибка создания категории:', error);
        });
    }

    return (
        <>
            <Modal show={show} onHide={hide}>
                <Modal.Header closeButton>
                    <Modal.Title>Добавить категорию</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Form>
                        <Form.Control className="mb-2" id="categoryId" type="text" value={name}
                            onChange={e => setName(e.target.value)}
                            placeholder="Название..." />
                    </Form>
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={hide}>
                        Отмена
                    </Button>
                    <Button variant="primary" onClick={addCategory}>
                        Добавить
                    </Button>
                </Modal.Footer>
                <Alert show={error} variant="danger" onClose={() => setError(false)} >
                    <Alert.Heading>Ошибка создания категории</Alert.Heading>
                    <Button onClick={() => setError(false)} variant="outline-dark">
                        Закрыть
                    </Button>
                </Alert>
            </Modal>
        </>
    )
}

export default AddCategory