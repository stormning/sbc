#!/bin/bash
export SBC_HOME=.
export MAJOR_VERSION_NUMBER=1.0
export BUILD_NUMBER=356

export WORKSPACE=$SBC_HOME
mkdir $WORKSPACE/dependencies
export DEPENDENCIES_HOME=$WORKSPACE/dependencies


ant release -f ./release/build.xml -Dsbc.release.version=$MAJOR_VERSION_NUMBER.$BUILD_NUMBER -Dsbc.branch.name=sbc-release-$MAJOR_VERSION_NUMBER.$BUILD_NUMBER -Dcheckout.sbc.dir=$SBC_HOME -Dworkspace.sbc.dir=$SBC_HOME -Dcheckout.dir=$DEPENDENCIES_HOME