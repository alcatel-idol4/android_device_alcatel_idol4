#include <cutils/log.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <string.h>

extern "C" {

extern void exTfa98xx_speakeroff_pending();
extern int exTfa98xx_speakeron(int);
extern void exTfa98xx_speakeroff();
extern int tfa98xx_ftm_calibration();
extern int tfa9897_speaker_resonance(int);
extern void exTfa98xx_force_clear_MTPEX();

void exTff98xx_speakeroff_pending() {
	ALOGE("%s: E", __func__);
	exTfa98xx_speakeroff_pending();
}

int exTff98xx_speakeron(int i) {
	ALOGE("%s: param = %d", __func__, i);
	return exTfa98xx_speakeron(i);
}
void exTff98xx_speakeroff() {
	ALOGE("%s: E", __func__);
	exTfa98xx_speakeroff();
}

int tff98xx_ftm_calibration() {
	ALOGE("%s: E", __func__);
	return tfa98xx_ftm_calibration();
}

int tff9897_speaker_resonance(int i) {
	ALOGE("%s: param = %d", __func__, i);
	return tfa9897_speaker_resonance(i);
}

void exTff98xx_force_clear_MTPEX() {
	ALOGE("%s: E", __func__);
	exTfa98xx_force_clear_MTPEX();
}

}
