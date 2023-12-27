import React, { useEffect, useState } from "react";
import { Button, Col, Container, Row, Spinner } from "react-bootstrap";
import { getUserHousing } from "../http/userApi";
import { useNavigate, useParams } from "react-router-dom";
import UpdHousingModal from "../models/UpdHousingModal";
import { deleteHousing } from "../http/housingApi";
import { CREATEHOUSING_ROUTE } from "../utils/consts";

function UserHousing() {
    const { id } = useParams()
    const [userHousing, setUserHousing] = useState([])

    const [updateModel, setUpdateModel] = useState(false);
    const [updateHousingModel, setUpdateHousingModel] = useState()
    const [updId, setUpdId] = useState();
    const [isLoading, setIsLoading] = useState(true)
    const navigate = useNavigate()

    useEffect(() => {
        getUserHousing(id).then((data) => {
            setUserHousing(data);
        }).then(() => setIsLoading(false));
    }, [])

    const setUpd = (id) => {
        setUpdId(id);
        setUpdateModel(true)
    };

    const updateHousing = (id) => {
        setUpdId(id);
        setUpdateHousingModel(true)
    }

    return (
        <Container>
            {isLoading ? (
                <Spinner animation="border" role="status">
                    <span className="visually-hidden">Loading...</span>
                </Spinner>
            ) : (
                <>
                    <h4>Мои объявления</h4>
                    {userHousing.length !== 0 ?
                        <Row>
                            {userHousing.map((item) => (
                                <Row key={item.id} className="mb-2">
                                    <Col xs={2}>
                                        {item.housing.name}
                                    </Col>
                                    <Col xs={2}>
                                        {item.housing.price}
                                    </Col>
                                    <Col xs={2}>
                                        {item.housing.description}
                                    </Col>
                                    <Col xs={2}>
                                        <div style={{
                                            width: "100px",
                                            height: "100px",
                                            backgroundImage: `url(${process.env.REACT_APP_API_URL + item.housing.img})`,
                                            backgroundRepeat: 'no-repeat',
                                            backgroundSize: 'cover'
                                        }}>
                                        </div>
                                    </Col>
                                    <Col xs={4}>
                                        <Button className="me-2" variant="dark" onClick={() => {
                                            updateHousing(item.housing.id)
                                        }}>
                                            Изменить
                                        </Button>
                                        <Button variant="danger" onClick={() => {
                                            deleteHousing(item.housing.id)
                                                .then(() => {
                                                    getUserHousing(id).then((data) => {
                                                        setUserHousing(data);
                                                    });
                                                })
                                        }}>
                                            Удалить
                                        </Button>
                                    </Col>
                                </Row>
                            ))}
                        </Row>
                        :
                        <>
                            <p>У вас нет объявлений</p>
                            <Button variant="dark" className="mt-2" onClick={() => navigate(CREATEHOUSING_ROUTE)}>Доавить</Button>
                        </>
                    }
                </>
            )}
            <UpdHousingModal show={updateHousingModel} hide={() => setUpdateHousingModel(false)} updId={updId} />
        </Container>
    )
}

export default UserHousing