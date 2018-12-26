#!/bin/bash 

cksum comments-report.2018-* | tail -2
echo ""
cksum insitu-report.2018-* | tail -2
echo ""
cksum nutrient-report.2018-* | tail -2
echo ""
cksum sample-report.2018-* | tail -2
