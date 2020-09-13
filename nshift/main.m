// Copyright 2017 Jenghis
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <Foundation/Foundation.h>
#import "CBBlueLightClient.h"

int main(int argc, const char * argv[]) {
    CBBlueLightClient *client = [[CBBlueLightClient alloc] init];
    BlueLightStatus status;
    [client getBlueLightStatus:&status];
    if (argc == 1) {
        float strength;
        [client getStrength:&strength];
        printf("%.2f\n", status.enabled ? strength : 0);
    }
    else if (argc == 2) {
        float strength = [[NSString stringWithUTF8String:argv[1]] floatValue];
        if (strength == 0 && status.enabled) {
            [client setEnabled:false];
        }
        else if (strength > 0 && !status.enabled) {
            [client setEnabled:true];
        }
        [client setStrength:strength withPeriod:0 commit:true];
    }
    return 0;
}
