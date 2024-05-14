package locusts

import "testing"

func TestIntroduceLocusts(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			t.Errorf("Panic! The locusts are loose!")
		}
	}()

	IntroduceLocusts()
}
