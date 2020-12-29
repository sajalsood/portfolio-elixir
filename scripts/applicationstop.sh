#!/bin/bash

if (systemctl -q is-active portfolio.service)
    then
    systemctl stop portfolio.service
fi