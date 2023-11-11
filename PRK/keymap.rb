# Alglabnet-Meishi
# Author: alg
# Board : RP2040Zero

kbd = Keyboard.new

kbd.init_direct_pins(
  [   7,  6,  5,  4 ]
)

kbd.add_layer :default, %i(
  A_LAYER1  KC_B      KC_C      KC_D
)
kbd.add_layer :layer1, %i(
  A_LAYER1  E_LAYER2  KC_F      KC_G
)
kbd.add_layer :layer2, %i(
  A_LAYER1  E_LAYER2  H_LAYER3  KC_I
)
kbd.add_layer :layer3, %i(
  A_LAYER1  E_LAYER2  H_LAYER3  KC_J
)

kbd.define_mode_key :A_LAYER1, [ :KC_A, :layer1, 200, 200 ]
kbd.define_mode_key :E_LAYER2, [ :KC_E, :layer2, 200, 200 ]
kbd.define_mode_key :H_LAYER3, [ :KC_H, :layer3, 200, 200 ]

kbd.start!
