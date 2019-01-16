#!/bin/bash 

cksum comments-report.* | tail -2
echo ""
cksum insitu-report.* | tail -2
echo ""
cksum nutrient-report.* | tail -2
echo ""
cksum sample-report.* | tail -2
