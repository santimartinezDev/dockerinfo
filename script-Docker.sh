#!/bin/bash

images=$(docker images)
nimages=$(docker images | wc -l)

containerON=$(docker ps)
ncontainerON=$(docker ps | wc -l)

containerALL=$(docker ps -a)
ncontainerALL=$(docker ps -a | wc -l)


echo -e "\e[32m$nimages images:"
echo -e "\e[0m$images"
echo ""
echo -e "\e[32m$ncontainerON active containers:"
echo -e "\e[0m$containerON"
echo ""
echo -e "\e[32m$ncontainerALL containers:"
echo -e "\e[0m$containerALL"
echo ""
echo -e "\e[32mTo view volumes: docker volume ls"
