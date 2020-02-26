<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class StartController extends AbstractController{

    /**
     * @Route("/")
     *
     * @return Response
     */
    public function indexAction(){
        $connection = $this->getDoctrine()->getConnection();
        $connection->connect();
        $doctrineStatus = $connection->isConnected()? 'connected' : 'not connected';

        return new Response('Start page. <br/> Doctrine is' . $doctrineStatus);
    }
}
