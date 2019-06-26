/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

static int read_file2(const char *fname, char *data, int max_size)
{
    int fd, rc;

    if (max_size < 1)
        return 0;

    fd = open(fname, O_RDONLY);
    if (fd < 0) {
        ERROR("failed to open '%s'\n", fname);
        return 0;
    }

    rc = read(fd, data, max_size - 1);
    if ((rc > 0) && (rc < max_size))
        data[rc] = '\0';
    else
        data[0] = '\0';
    close(fd);

    return 1;
}

void init_alarm_boot_properties()
{
    char const *alarm_file = "/proc/sys/kernel/boot_reason";
    char buf[64];

    if (read_file2(alarm_file, buf, sizeof(buf))) {
        /*
         * Setup ro.alarm_boot value to true when it is RTC triggered boot up
         * For existing PMIC chips, the following mapping applies
         * for the value of boot_reason:
         *
         * 0 -> unknown
         * 1 -> hard reset
         * 2 -> sudden momentary power loss (SMPL)
         * 3 -> real time clock (RTC)
         * 4 -> DC charger inserted
         * 5 -> USB charger insertd
         * 6 -> PON1 pin toggled (for secondary PMICs)
         * 7 -> CBLPWR_N pin toggled (for external power supply)
         * 8 -> KPDPWR_N pin toggled (power key pressed)
         */
        if (buf[0] == '3')
            property_override("ro.alarm_boot", "true");
        else
            property_override("ro.alarm_boot", "false");
    }
}

void common_properties()
{
        property_set("ro.product.device", "idol4");
        property_set("ro.build.product", "idol4");
}

void single_sim_properties()
{
    property_override("persist.dpm.feature", "7");
    property_override("persist.dpm.config.file", "0");
    property_override("persist.radio.apm_sim_not_pwdn", "1");
    property_override("persist.data.iwlan.enable", "false");
    property_override("persist.radio.VT_ENABLE", "0");
    property_override("persist.radio.calls.on.ims", "true");
    property_override("persist.radio.vrte_logic", "1");
    property_override("persist.radio.jbims", "1");
    property_override("ro.telephony.default_network", "9");
    property_override("persist.radio.multisim.config", "single");
}

void clientid_properties()
{
    property_override("ro.com.google.clientidbase", "android-alcatel");
    property_override("ro.com.google.clientidbase.ms", "android-alcatel");
    property_override("ro.com.google.clientidbase.gmm", "android-alcatel");
    property_override("ro.com.google.clientidbase.am", "android-alcatel");
    property_override("ro.com.google.clientidbase.yt", "android-alcatel");
}

void vendor_load_properties()
{
	
    std::string device = property_get("ro.cm.device");
    if (device != "idol4")
        return;
	
    std::string curef_version = property_get("ro.lineage.curef");
    
    // 6055U (Cricket USA)
    if (curef_version == "6055U") {
        property_override("ro.build.fingerprint", "TCL/Alcatel_6055U/idol4:6.0.1/MMB29M/vCCJ-0:user/release-keys");
        property_override("ro.build.description", "idol452_voltecricket-user 6.0.1 MMB29M vCCJ-0 release-keys");
        property_override("ro.product.model", "Alcatel 6055U");
        property_override("ro.product.name", "Alcatel_6055U");
        property_override("persist.debug.wfd.enable", "0");
        property_override("persist.hwc.enable_vds", "0");
        property_override("persist.data_netmgrd_mtu", "1420");
        property_override("ro.com.google.clientidbase", "android-alcatel");
        property_override("ro.com.google.clientidbase.ms", "android-att-aio-us");
        property_override("ro.com.google.clientidbase.gmm", "android-alcatel");
        property_override("ro.com.google.clientidbase.am", "android-att-aio-us");
        property_override("ro.com.google.clientidbase.yt", "android-alcatel");
        single_sim_properties();
		common_properties();
    // 6055B (Mexico)
    } else if (curef_version == "6055B") {
        property_override("ro.build.fingerprint", "TCL/6055B/idol4:6.0.1/MMB29M/v1AJW-0:user/release-keys");
        property_override("ro.build.description", "idol4-user 6.0.1 MMB29M v1AJW-0 release-keys");
        property_override("ro.product.model", "6055B");
        property_override("ro.product.name", "6055B");
        property_override("persist.debug.wfd.enable", "1");
        property_override("persist.hwc.enable_vds", "1");
        property_override("persist.data_netmgrd_mtu", "1440");
        single_sim_properties();
        clientid_properties();
		common_properties();
    // 6055P (UK)
    } else if (curef_version == "6055P") {
        property_override("ro.build.fingerprint", "TCL/6055P/idol4:6.0.1/MMB29M/v1AKZ-0:user/release-keys");
        property_override("ro.build.description", "idol4-user 6.0.1 MMB29M v1AKZ-0 release-keys");
        property_override("ro.product.model", "6055P");
        property_override("ro.product.name", "6055P");
        property_override("persist.debug.wfd.enable", "1");
        property_override("persist.hwc.enable_vds", "1");
        property_override("persist.data_netmgrd_mtu", "1440");
        single_sim_properties();
        clientid_properties();
		common_properties();
    // If not found default to 6055K (Dual sim)
    } else {
        property_override("ro.telephony.default_network", "10");
        property_override("persist.radio.multisim.config", "dsds");
        property_override("ro.build.fingerprint", "TCL/6055K/idol4:6.0.1/MMB29M/v1AKZ-0:user/release-keys");
        property_override("ro.build.description", "idol4-user 6.0.1 MMB29M v1AKZ-0 release-keys");
        property_override("ro.product.model", "6055K");
        property_override("ro.product.name", "6055K");
        property_override("persist.debug.wfd.enable", "1");
        property_override("persist.hwc.enable_vds", "1");
        property_override("persist.data_netmgrd_mtu", "1440");
        clientid_properties();
		common_properties();
    }

    init_alarm_boot_properties();
}
