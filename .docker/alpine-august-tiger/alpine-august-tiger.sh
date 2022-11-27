#!/bin/bash

# Title: alpine-august-tiger
# UUID: 33fe6d24-a5c0-4e6e-8f52-3154a5d33c44
# Original Author: Liam Monninger
# Contributors: Liam Monninger
# Email: l.mak.monninger@gmail.com
# Organization: Gameday Guru, Inc.
# Date Tagged: 2022-08-30 14:11
# 
# Purpose:
# >
# >
# >
# References:
# -
# -
# -
# 
# License:
# End-User License Agreement (EULA) of Gameday Guru
# This End-User License Agreement ("EULA") is a legal agreement between you and Gameday Guru. Our EULA was created by EULA Template for Gameday Guru.
# 
# This EULA agreement governs your acquisition and use of our Gameday Guru software ("Software") directly from Gameday Guru or indirectly through a Gameday Guru authorized reseller or distributor (a "Reseller").
# 
# Please read this EULA agreement carefully before completing the installation process and using the Gameday Guru software. It provides a license to use the Gameday Guru software and contains warranty information and liability disclaimers.
# 
# If you register for a free trial of the Gameday Guru software, this EULA agreement will also govern that trial. By clicking "accept" or installing and/or using the Gameday Guru software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.
# 
# If you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.
# 
# This EULA agreement shall apply only to the Software supplied by Gameday Guru herewith regardless of whether other software is referred to or described herein. The terms also apply to any Gameday Guru updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.
# 
# License Grant
# Gameday Guru hereby grants you a personal, non-transferable, non-exclusive licence to use the Gameday Guru software on your devices in accordance with the terms of this EULA agreement.
# 
# You are permitted to load the Gameday Guru software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum requirements of the Gameday Guru software.
# 
# You are not permitted to:
# 
# Edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things
# Reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose
# Allow any third party to use the Software on behalf of or for the benefit of any third party
# Use the Software in any way which breaches any applicable local, national or international law
# use the Software for any purpose that Gameday Guru considers is a breach of this EULA agreement
# Intellectual Property and Ownership
# Gameday Guru shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of Gameday Guru.
# 
# Gameday Guru reserves the right to grant licences to use the Software to third parties.
# 
# Termination
# This EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to Gameday Guru.
# 
# It will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.
# 
# Governing Law
# This EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of us.
ls
docker compose -f ./.docker/alpine-august-tiger/alpine-august-tiger.yml build
docker image ls
docker image ls | grep ${CONTAINER_NAME}
docker tag ${CONTAINER_NAME}:${VERSION} ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:${VERSION}
docker image ls
docker tag ${CONTAINER_NAME}:${VERSION} ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:latest
docker image ls
docker tag ${CONTAINER_NAME}:${VERSION} ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:alpine-august-tiger
docker image ls
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:${VERSION}
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:latest
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CONTAINER_NAME}:alpine-august-tiger
