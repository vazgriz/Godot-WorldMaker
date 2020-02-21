GDPC                                                                             *   @   res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex   ��     �       	�5����JA �uUb6H   res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex  ��     �       i�]K����Y�7%��@   res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex  �     �       ZJ+�%0�8�ߦ@�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@�     �      d�a;1s���mыei�-<   res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex �     |       5D��n�5,wWk�-@   res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex `B      ��      �]|Eu�e�Fr0�3   res://Scenes/Main.tscn  �       %      ��J�oܐ"��   res://Scenes/Node_info.tscn �0      �
      ٌ�m
��F�x�L   res://Scenes/continent.tscn �;      �       �_�i�̆cg���?�   res://Scenes/map.tscn   P<      �       ��@�#�|��+ Z�   res://Scenes/node.tscn  P=      	      K��b|���d�ETd��$   res://Screenshots/screen1.png.import#     �      cf�:���%��:��B�   res://Scripts/Main.gd.remap p�     '       *�e�R��_�������   res://Scripts/Main.gdc  �%     �      W]����+z�Q�\H�8�   res://Scripts/Map.gd.remap  ��     &       ,����L�)KW��G�   res://Scripts/Map.gdc   p(     �      �,�M���/�6$�A    res://Scripts/Node_info.gd.remap��     ,       �	=m��kz0��͗�   res://Scripts/Node_info.gdc  E     a      h�^�����ێ�%�(    res://Scripts/continent.gd.remap �     ,       �tYQ�����2TLj    res://Scripts/continent.gdc �H     �      �5�YMΘvzB���d�    res://Scripts/cursor.gd.remap   0�     )       ���fQ,ǚ��/�NZ   res://Scripts/cursor.gdc0P     �      \��%N�PN�q���X�(   res://Scripts/elevation_shadow.gd.remap `�     3       ��S:F�,���T��,�$   res://Scripts/elevation_shadow.gdc  �T     �       E�=t ��7�� �}`0(   res://Scripts/generate_button.gd.remap  ��     2       ���"��H�10)�w$   res://Scripts/generate_button.gdc   �U     �       ���p� o��7�_C�   res://Scripts/node.gd.remap ��     '       �8��K ��j��7�   res://Scripts/node.gdc  PV     J2      ��N��qv��D����$   res://Scripts/node_sprite.gd.remap  �     .       ��x?�u�F�����tK&    res://Scripts/node_sprite.gdc   ��     y      /ش�$��)ۡ�:_$   res://Scripts/wind_arrow.gd.remap   @�     -       ����z@'W��r&�   res://Scripts/wind_arrow.gdc �     X      �s�Q���`�A�    res://Sprites/arrow.png.import  �     �      �.� ������iB�T(   res://Sprites/arrow_diagonal.png.import 0�     �      H+\�0�u�66����    res://Sprites/cursor.png.import p�     �      �^�����B*�s��r    res://Sprites/node.png.import   ��     �      M+�c5-a�G��CE�`t   res://UI/map_mode_group.tres�     6       ������U�\��H��$   res://UI/map_size_buttongroup.tres  P�     6       ������U�\��H��   res://default_env.tres  ��     �       um�`�N��<*ỳ�8   res://icon.png  p�     v      ge��@o�7�|AZ   res://icon.png.import   �     �      �����%��(#AB�   res://project.binary��     3      �^H�7ގ���KC�q��        [gd_scene load_steps=10 format=2]

[ext_resource path="res://Scenes/map.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/generate_button.gd" type="Script" id=2]
[ext_resource path="res://Scenes/continent.tscn" type="PackedScene" id=3]
[ext_resource path="res://UI/map_mode_group.tres" type="ButtonGroup" id=4]
[ext_resource path="res://Scripts/Main.gd" type="Script" id=5]
[ext_resource path="res://UI/map_size_buttongroup.tres" type="ButtonGroup" id=6]
[ext_resource path="res://Sprites/cursor.png" type="Texture" id=7]
[ext_resource path="res://Scripts/cursor.gd" type="Script" id=8]
[ext_resource path="res://Scenes/Node_info.tscn" type="PackedScene" id=9]

[node name="Main" type="Node2D"]
script = ExtResource( 5 )

[node name="Map" parent="." instance=ExtResource( 1 )]
position = Vector2( 104, 4 )
continent = ExtResource( 3 )

[node name="UI_container" type="VBoxContainer" parent="."]
margin_right = 101.0
margin_bottom = 446.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="generation_UI" type="VBoxContainer" parent="UI_container"]
margin_right = 101.0
margin_bottom = 132.0

[node name="map_size_label" type="Label" parent="UI_container/generation_UI"]
margin_right = 101.0
margin_bottom = 14.0
text = "Map Size"

[node name="small_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 18.0
margin_right = 101.0
margin_bottom = 38.0
toggle_mode = true
group = ExtResource( 6 )
text = "Small"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="medium_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 42.0
margin_right = 101.0
margin_bottom = 62.0
toggle_mode = true
pressed = true
group = ExtResource( 6 )
text = "Medium"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="large_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 66.0
margin_right = 101.0
margin_bottom = 86.0
toggle_mode = true
group = ExtResource( 6 )
text = "Large"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="continents_label" type="Label" parent="UI_container/generation_UI"]
margin_top = 90.0
margin_right = 101.0
margin_bottom = 104.0
text = "Continents"

[node name="continents_box" type="SpinBox" parent="UI_container/generation_UI"]
margin_top = 108.0
margin_right = 101.0
margin_bottom = 132.0
min_value = 2.0
value = 12.0

[node name="generate_button" type="Button" parent="UI_container"]
margin_top = 136.0
margin_right = 101.0
margin_bottom = 156.0
text = "Generate"
script = ExtResource( 2 )

[node name="HSeparator2" type="HSeparator" parent="UI_container"]
margin_top = 160.0
margin_right = 101.0
margin_bottom = 164.0

[node name="map_settings" type="VBoxContainer" parent="UI_container"]
margin_top = 168.0
margin_right = 101.0
margin_bottom = 568.0

[node name="adjustment_label" type="Label" parent="UI_container/map_settings"]
margin_right = 101.0
margin_bottom = 14.0
text = "Adjust"

[node name="smooth_button" type="Button" parent="UI_container/map_settings"]
margin_top = 18.0
margin_right = 101.0
margin_bottom = 38.0
text = "Erode"
script = ExtResource( 2 )

[node name="smooth_ele_button" type="Button" parent="UI_container/map_settings"]
margin_top = 42.0
margin_right = 101.0
margin_bottom = 62.0
text = "Smooth"
script = ExtResource( 2 )

[node name="water_erosion_button" type="Button" parent="UI_container/map_settings"]
margin_top = 66.0
margin_right = 101.0
margin_bottom = 86.0
text = "Sea Erode"
script = ExtResource( 2 )

[node name="settings_label" type="Label" parent="UI_container/map_settings"]
margin_top = 90.0
margin_right = 101.0
margin_bottom = 104.0
text = "Settings"

[node name="Sea_level_label" type="Label" parent="UI_container/map_settings"]
margin_top = 108.0
margin_right = 101.0
margin_bottom = 122.0
text = "Sea Level"

[node name="sea_level_box" type="SpinBox" parent="UI_container/map_settings"]
margin_top = 126.0
margin_right = 101.0
margin_bottom = 150.0
min_value = 2.0
value = 9.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="apply_settings_button" type="Button" parent="UI_container/map_settings"]
margin_top = 154.0
margin_right = 101.0
margin_bottom = 174.0
toggle_mode = true
group = ExtResource( 4 )
text = "Apply"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSeparator" type="HSeparator" parent="UI_container/map_settings"]
margin_top = 178.0
margin_right = 101.0
margin_bottom = 182.0

[node name="modes_label" type="Label" parent="UI_container/map_settings"]
margin_top = 186.0
margin_right = 101.0
margin_bottom = 200.0
text = "Map Modes"

[node name="Continent_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 204.0
margin_right = 101.0
margin_bottom = 224.0
toggle_mode = true
pressed = true
group = ExtResource( 4 )
text = "Continent"

[node name="Conflict_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 228.0
margin_right = 101.0
margin_bottom = 248.0
toggle_mode = true
group = ExtResource( 4 )
text = "Conflict"

[node name="Elevation_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 252.0
margin_right = 101.0
margin_bottom = 272.0
toggle_mode = true
group = ExtResource( 4 )
text = "Elevation"

[node name="Sea_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 276.0
margin_right = 101.0
margin_bottom = 296.0
toggle_mode = true
group = ExtResource( 4 )
text = "Sea"

[node name="Rainfall_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 300.0
margin_right = 101.0
margin_bottom = 320.0
toggle_mode = true
group = ExtResource( 4 )
text = "Rainfall"

[node name="Temperature_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 324.0
margin_right = 101.0
margin_bottom = 344.0
toggle_mode = true
group = ExtResource( 4 )
text = "Temperature"

[node name="Climate_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 348.0
margin_right = 101.0
margin_bottom = 368.0
toggle_mode = true
group = ExtResource( 4 )
text = "Climate"

[node name="HSeparator2" type="HSeparator" parent="UI_container/map_settings"]
margin_top = 372.0
margin_right = 101.0
margin_bottom = 376.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Wind_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 380.0
margin_right = 101.0
margin_bottom = 400.0
toggle_mode = true
text = "Show Wind"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="cursor" type="Sprite" parent="."]
modulate = Color( 1, 0, 0, 1 )
position = Vector2( 346, 314 )
texture = ExtResource( 7 )
script = ExtResource( 8 )

[node name="Camera2D" type="Camera2D" parent="cursor"]

[node name="Node_info" parent="." instance=ExtResource( 9 )]
visible = false
margin_left = 1.37234
margin_top = 459.949
margin_right = 99.3723
margin_bottom = 597.949
[connection signal="map_generated" from="Map" to="cursor" method="_on_Map_map_generated"]
[connection signal="map_generated" from="Map" to="UI_container/generate_button" method="_on_Map_map_generated"]
[connection signal="map_generated" from="Map" to="Node_info" method="_on_Map_map_generated"]
[connection signal="pressed" from="UI_container/generation_UI/small_size_button" to="Map" method="_on_size_button_pressed" binds= [ "small" ]]
[connection signal="pressed" from="UI_container/generation_UI/medium_size_button" to="Map" method="_on_size_button_pressed" binds= [ "medium" ]]
[connection signal="pressed" from="UI_container/generation_UI/large_size_button" to="Map" method="_on_size_button_pressed" binds= [ "large" ]]
[connection signal="pressed" from="UI_container/generate_button" to="Map" method="_on_generate_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/smooth_button" to="Map" method="_on_smooth_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/smooth_ele_button" to="Map" method="_on_smooth_ele_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/water_erosion_button" to="Map" method="_on_water_erosion_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/apply_settings_button" to="Map" method="_on_apply_settings_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/Continent_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "continent" ]]
[connection signal="pressed" from="UI_container/map_settings/Conflict_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "continentconflict" ]]
[connection signal="pressed" from="UI_container/map_settings/Elevation_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "elevation" ]]
[connection signal="pressed" from="UI_container/map_settings/Sea_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "sea" ]]
[connection signal="pressed" from="UI_container/map_settings/Rainfall_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "rainfall" ]]
[connection signal="pressed" from="UI_container/map_settings/Temperature_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "temperature" ]]
[connection signal="pressed" from="UI_container/map_settings/Climate_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "climate" ]]
[connection signal="pressed" from="UI_container/map_settings/Wind_mode_button" to="Map" method="_on_Wind_mode_button_pressed"]
[connection signal="node_info" from="cursor" to="Node_info" method="_on_cursor_node_info"]
[gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Node_info.gd" type="Script" id=1]

[node name="Node_info" type="VBoxContainer"]
margin_left = 2.00259
margin_top = 526.755
margin_right = 65.0026
margin_bottom = 594.755
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="node_info_label" type="Label" parent="."]
margin_right = 98.0
margin_bottom = 14.0
text = "Node Info"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSeparator" type="HSeparator" parent="."]
margin_top = 18.0
margin_right = 98.0
margin_bottom = 22.0

[node name="climate_label" type="Label" parent="."]
margin_top = 26.0
margin_right = 98.0
margin_bottom = 40.0
text = "Climate:"
align = 1

[node name="climate_text" type="Label" parent="."]
margin_top = 44.0
margin_right = 98.0
margin_bottom = 58.0
text = "asd"
align = 1

[node name="HSeparator2" type="HSeparator" parent="."]
margin_top = 62.0
margin_right = 98.0
margin_bottom = 66.0

[node name="nodeheight" type="HBoxContainer" parent="."]
margin_top = 70.0
margin_right = 98.0
margin_bottom = 84.0

[node name="height_label" type="Label" parent="nodeheight"]
margin_right = 46.0
margin_bottom = 14.0
text = "Height:"

[node name="height_number" type="Label" parent="nodeheight"]
margin_left = 50.0
margin_right = 58.0
margin_bottom = 14.0
text = "0"

[node name="nodetemperature" type="HBoxContainer" parent="."]
margin_top = 88.0
margin_right = 98.0
margin_bottom = 102.0

[node name="temperature_label" type="Label" parent="nodetemperature"]
margin_right = 86.0
margin_bottom = 14.0
text = "Temperature:"

[node name="temperature_number" type="Label" parent="nodetemperature"]
margin_left = 90.0
margin_right = 98.0
margin_bottom = 14.0
text = "0"

[node name="noderainfall" type="HBoxContainer" parent="."]
margin_top = 106.0
margin_right = 98.0
margin_bottom = 120.0

[node name="rainfall_label" type="Label" parent="noderainfall"]
margin_right = 50.0
margin_bottom = 14.0
text = "Rainfall:"

[node name="rainfall_number" type="Label" parent="noderainfall"]
margin_left = 54.0
margin_right = 62.0
margin_bottom = 14.0
text = "0"

[node name="nodeXY" type="HBoxContainer" parent="."]
margin_top = 124.0
margin_right = 98.0
margin_bottom = 138.0

[node name="x_label" type="Label" parent="nodeXY"]
margin_right = 12.0
margin_bottom = 14.0
text = "X:"

[node name="x_number" type="Label" parent="nodeXY"]
margin_left = 16.0
margin_right = 24.0
margin_bottom = 14.0
text = "0"

[node name="y_label" type="Label" parent="nodeXY"]
margin_left = 28.0
margin_right = 39.0
margin_bottom = 14.0
text = "Y:"

[node name="y_number" type="Label" parent="nodeXY"]
margin_left = 43.0
margin_right = 51.0
margin_bottom = 14.0
text = "0"
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/continent.gd" type="Script" id=1]

[node name="continent" type="Node"]
script = ExtResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Map.gd" type="Script" id=1]
[ext_resource path="res://Scenes/node.tscn" type="PackedScene" id=2]

[node name="Map" type="Node2D"]
script = ExtResource( 1 )
node = ExtResource( 2 )
        [gd_scene load_steps=8 format=2]

[ext_resource path="res://Sprites/node.png" type="Texture" id=1]
[ext_resource path="res://Scripts/node.gd" type="Script" id=2]
[ext_resource path="res://Sprites/arrow.png" type="Texture" id=3]
[ext_resource path="res://Scripts/wind_arrow.gd" type="Script" id=4]
[ext_resource path="res://Sprites/arrow_diagonal.png" type="Texture" id=5]
[ext_resource path="res://Scripts/node_sprite.gd" type="Script" id=6]
[ext_resource path="res://Scripts/elevation_shadow.gd" type="Script" id=7]

[node name="node" type="Sprite"]
scale = Vector2( 4, 4 )
script = ExtResource( 2 )

[node name="node_sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
script = ExtResource( 6 )

[node name="wind_arrow" type="Sprite" parent="."]
visible = false
rotation = -4.46638e-06
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 5 )
script = ExtResource( 4 )
arrow = ExtResource( 3 )
diagonal_arrow = ExtResource( 5 )

[node name="elevation_shadow" type="Sprite" parent="."]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 0.2, 0.2 )
scale = Vector2( 1.25, 1.25 )
z_index = -1
texture = ExtResource( 1 )
script = ExtResource( 7 )

[node name="overlay_shadow" type="Sprite" parent="."]
self_modulate = Color( 0, 0, 0, 0 )
z_index = 1
texture = ExtResource( 1 )
       GDST  x          ��  PNG �PNG

   IHDR    x   �IA(   sRGB ���    IDATx���y`U�6�+�$$�@d���"�� �	.�+DĠ(�|**� ����8:\��V��dQ6A A��%$d�@tW}��t�>'Iw�;��A��:u����:u���&�@�.]FX�PW�V�p�BCC�]""""""�T �����]"""""""�	/� ��+ADDDDDDD5�DDDDDDD���������6�#l """"""�G��̴懟0k�"�):_��G6��c�c�m=�U9"""""""�J5�e�b�/�4�R��Kl˲!�������(0T�!�t�9�F E��cZ`��m �.=n���9�z�f��DDDDDDD�5F@d���4툵�/�ڞ}qmϾX{�2,M;"�Q�zyJQ�J�	4��`׮]n�v��z���н�5x(�>�٧/  �,���E ���0x`_<�t�w�FXV�0�R]�`���3\f��:S%�#��b���]W��.PܖY�����.��v�܉[n�m��k�.�rko�ܹӫ�tC@��P��v+�ӱ&'٧/^1O��X��5�t��v+���-/))	���.�32���.�(7)��+[E�#>s�a#��i��'""""""��޽;~ܲ��� G#��[6�{��^]g�JJ-U,  ��%�U,()��/�s<�33���X���Ӧ��)X�
$��l=ֹ3\"  ��HMJBR�Ղ������꓊��l ��Pt� ���1�/�8�5i��aAh�vMྨ㸿k �(7K�?IH����v�?�3:����O �����1]�=�Q֋��%ذ.P�a��s��LϬu��ԩ�<mz�220}z&�MumHV���	*<j�RwG]�MDDDDDD�W�� _6 U,�>@AXi1֮Z�F�Rto��m���\���V �R\���ѹs��@&2����IHJ�Df*܉OŰ.��y��َ�Ӑ9����Ȍ_]_\�ν�r��zeC��$$%����B��"	;%$9�/FRj��	20��0`�}q���H�o_f10ݹ@Y�������Emx�*�ZYV���u�+؛o���g����ͷ�u�+X�_���8�	HMEj�Έ�9��=�e|��Ld"	I��������Q��!��Df�48n��O�*��4u2�OG�����y�T\Qr�
w�˅�wAj�~,v��>���.e=2�wSo""""""?��ȃ��V�03����lƠ�Z`�-���S���P����:4E\d(2s�1��t]42�������$�U~��$ cI����xd!u:�g�5"8eL�톿]ߏi.U� _�B�!�>��W G """"""��c�@�[��Px����_�1����s�f�bmF.:�a�u-���3g��E�a�4�� �3:�Nô���wFg��?�S��p[~gtΘ���G��K �xL��ӆM��^� 3�����p]6i�~,�0tqt���}:�
Q��ec@���i�_��d��_r���#8ق�-���#X�K�^��K`�O�T��xM���?�o��w�?	��OC�c��.�H�_q< #IX�8�9��pTr��������Sz$$M�4L��7<�����,��#)��.ӑa�;�u�0HDDDDDD���c��������ƀ=zxu���&����p�nC�"�AC����vB��m`
�� �KK�]*F��#ؾ�7缥�cw�|�V���������n�/@�̌�#�|i���{�]���l(���������jD�x���hl��_�?��W�>��m """"""�J�T����z"񶞾��X�$""""""�ڍDDDDDDD���������ӥK��]"""""""��.]�)�A���ADDDDDDD5 �A( """"""�O�@DDDDDDT�� 0����
]1�(&�P E��( ��_���+���T\G��� t�(:\���^��뀮C������d��=�&d�F !�P��j~;�N��[[a�W����Ws�O�Yo�$J��'�� ��9�0�~�z @���G� 4�ۦZ�/�t���Sl�����X�>N&�?Y�  �.��i=ܑ}��3��W��[u��j#9���I||l�DWC��ǅq�I|�������eD��-�0^��	�-G���g  f�g���  y�0a9�5��% ��		>)�]Lc����d�'#;?hm���b��U����Ţ	�g-�q��L� x��g�3�����m�����>,�UErk{C@x��8�6�^x�V
X-��
]+�n����_�Dw���WE��J�e.�"�7�(p�Yw4�(f(��)0��
�%�9���%?z�
�X퉈�����P��֜���?c�����V ۵�"����� �P��EW�Ǽ�����9h-��e0DDDDDDD^b ���b@��/>58��C�Q�� �jʂ��c�5�ƪ���R�� 4�~�,�^,�nV�j{d�������ȋT ��X�W<<�^���p���ѽG7��73Eر�g|�۳S��C�>�VKY��σ� DDDDDD�* �0�.��ںA�P����Qx�4��((8���j���M\� u�]סÄ+�_ """"""��x��q�y��;���:%%� �_���l��=�o� EQ�c�.�|���� @�[oƠ!w�Y����+��O���  �-��)/���ǍFTTc<�<��6��v��� """""�:��#@�����g��ǆ�7��Bވn� ��u3n��f̚�..^��g�?����� N�9���9�'p�C�ب���+o8���V,O��g�~��\=�>DDDDDDT��z��# 669�'�c 8� ��f�w�ʲ���v�Z�9)_, d�?�\l۶�p{_���nن��v�`K������?"#�<ݲ<��<ܞ�塎���>�qJn�-@D�����M�l/:��3]�����i����0n6��&���&I\vf [^F?wL<C�V��݃G ��j�G� 2Rb?U]�s[�����?���{X�<Qm��H�R����0f��3����]�7m����5; <�L&���G�H~�� �>""""""�;�G�ɂ���m*�P~� EQ0��a���W�غ�kV�f����Ƙ��D��KJJ+A��HDDDDT_�'�7&�,5kϞ��?�6��*����hժ%JKK]�8�o��W�EV�q�5�U��������j`|O�?+W|�ٌ)���v�� 441M��w�[�w�����U�b�����v�۠G�n����gо}[DE5FBB?���zҶ;�@��s~DDDDDDDF�n���Ozqq1^�MM�z�9DFF������lڴ�>�G]�q;4�#�>���(�9S�Ui������b�S�Я����pM{�n��@�n']+���DDDDDD�]��w��Y�S�
�ѼOcuŴ��6b�����o�i�������G���;�g�6 """"""�[� �
{{�;���P�@DDDDDD�ek�Z ����_�KP�P��>%��q$ ��-#��]1�gEV�գ�����p��[�� �ѦZ�o�m�Ҭ�]�x���>]������d���|���z�d�wĿ���a<"6T�|����x[��eda<H?!���e�� �x�|��7INΤ�n�dCM�
8�_
Qr��&� X��_���������� �g�V�c�Z���f�kK�q_��Z�|&�aax���*F����nm�����'���`�%,8w��+�L�1�<U�U)�JQ���"�[J ���DDDDDD�u����g|U'XN�f)���R�����@��z8�߫��5��t�W�G�0������*�
��`RU�M��v�`
�"��:����g�eNww����x�}��~�)5���j;��GD^�0!��U���3���Й �))>�Qu� p��0B���clw��	�b�`u��uܽʦ.w��-G/
gÈ^�]D/���4(�@�e�t(O�@Q(���9�淁�������4 �".�i��ʫ8�h���Dq�Rq��|���d2!/�N (�I�b"""""""O� UU��������p�����)�b�����@DDDDDD^�@P��%(��U """""�:����#�{NT����zJ��[��۬���I��\OY��0~��Ia�Ċ7�w구tq���."6T�.��0޻]����,��{PY��/S���3KnϘM��M�e;�ؼi�F ��O��5M ]<n\����`��e�oGww���vc�*�;������''$�;�_�RXX@^Of��B��7@����]��_��w^�w5�������R {�z,ܶ��u!�����]""c�b�]�z��e����O$�&��mUC51��	ஞ3�� �q�a<#e�o*FTM#��������aC Q= """"""�z�DDDDDDD���������Փ�;w�~C�App0�͛�Y�f����ު�1VSa\7��'/��y�몺�G��!jka<X1�_�t�8n��?���/&E��Qy\rxtqx��~���y}l/�쇢�" @P��0��o  �L}]\������ɓ' �_[��{ui.�o�B��[[��`�����+~�w�4t����q��{к��������������֭[1h� ��U�;O%%%=z�w*�����p��!��GD�����������0�<�'�3��u��� 	�)SRj�:Ds�ЬY3t���1�v���X�����0q�D,]�����5�\�OKKC�Νݾ�ܹ3��Ҝ��������c�ҥX�`}�Q �[o���M��W^��0w�\�m1Q=��#���Ʈ]�p��I���ϸ�`�g|�С�ҥ^x��L&���K�|ҤI������_�y��hР ���3�����[o!3�w�����������# 88�����  7n���윹o߾X�j���p��Q�����ł����СCطo�G����!�O�>PU;v�  �رf�}��q�ܬY3���8ߟ8!�Rf���9r$fΜ��]�zT�94h4h��K���p��wcݺu ���R�zYn��Z����]  ?����ۇ{�ӦM�ҥK�p��*oU�
 �\s:t���d8�111�A<������9�͛��]^�t���? \u�UW�s��i,X� G�Err��!@�u��	o���������ƣ���Y�˷�����Z�x�1oV�����`Z%�7u���~_�}�0�ؾ�fUpW��ʯ�d�/"6T�.^�6�]Lca<H�T��-���o�`�������EׅQ�*���$��G�aI��L�\^Q�;*De�h�ym�D	㚦pz��g��� �>0�0��:����W�u�����Ԧ���zl۶���())q��������1h�  �q����
-Z���w�-,���ø��;�k���v�6l����#::���h߾�� rrrгgO�����Qm����N�j8CZZ^�u|��'X�b���j|��8u�,X��_~�m����Ä	��������O���;��3��Z�:���{����1~�x<EEEx��ǽ��D�w�sdw�d-݈n��͋�V��N��y�@v'[vG�����j? |�A�3���/.����.�!C���/?����	&���ya#�������,�?U�*�E.<<mڴ�������F�DDDDDDD�^i�׿��Պ����E�x�!`����(��������|����������� JKK�it]w�"Q�:�]�/(�&խBy��@Q� Ť&���%�i�<����ז��
��*�;��n˃�.{�#.[��t���|����wV���P���ŋ��{�u�l�f��J���o��$��dg=�&�C�&9e1���dy{u�z�� �u�D7s� 躸��p~H���Y����+-?�b �ީ�a|ML  ��C�����p��ѫKs����?!�_�͸^vƩ�Q������PQ�i��<p�?	�8�h>EQ`2� ��E`�A-��������R@5� &�5tMsi��]׻��w��@� �� �Ʉ�gq��Mf(l� �i�V]c��6��{j���~]��y�����*��
 �#���t��G t�~�����K"��� �\���d2�[c9����@PMՓ������� �V+,V��.�������S�����lu h�X/Z)�[k��DDDDDDT?� @�4h��7���ꂎ;`�g��]'w�Z�5�Ь�d0""""""��R���{���tŴ�}�k�;z;���
`�<�@DDDDDDާ�v �{w����l�/� �)��� ���Q�bo��N��bAII��?[8S^~O�����x6yE���D�~� ��n��%+�ۡ��䣸��(<U���6p�p�}��x� (���w!�T���4]w?H#��,ϫ,O�,Ϭ�,}V�x����{̋���
>�*�; �������>�ʮ����_���#�ģ�˲z��i\�:�'���2��0�^��ͪY7�O�c#��Υ4Ig�[�� ؼ�øU��&��S������0~������� J-�Z\\ �X�;��zL��ƾ9T��� @���N��?ddǗ���'�r\_�d�0����8}`����)) ���l2��c�����i8��:�+�{\�7�� ���gq����;�?����:���	��u @�^7�[oƬ����ŋxf�Sx ��gajl�X�>��gBDDDDDDuK@�x��I.�1��z�mؾ��NT��=�v��8~< ���{�v[/�K�  ���MX�v�3��u��H�v&�1 ߬�YY�ֻoW��ȑÑ��b�m_e����σ�:|��a�S>-��<�|�u'��6p��[���(�!O��G���� �'_��.���8��w>@fƯ���G\����� ?/��>/7q���6���ye�r�@��q3�q���sZ��@��=�#�� PRR�RGݞ��9��`�㽥�]Ӝ��K\Q���Gصs��za?B�������n2��Օ{"qq���͚5E^nY���
۬��}�� p�D.Z�j���R�?DDDDDDDuY@�0�LPU�������:��o���=�  �`U�j�<[6��ā�˞��4	��m���_��c�<�#G�⿇�qT$����c��>�N[eCU�3k@ N��\����޹�q�M������  ��.�>P�m�o��W�j�YoOCa�i�,\����;�?����GBttΜ)ª����P�5��DDDDDD�]�#��ᣪ�uK����%+�)))���',g����t��D�u����}X���8O����'��^]�{T~F�a�U�V�O���.�\�UBw/դn��Ư�o-���i,��:O�L�)HR��x���g2�|egJV�x�Ҧ7�}�  �n�x��K*`�>�)�A��O���4 ��z�q���Vqv���o�翶 �0!�&��v�����o��#��$�Œ+��,z�R���ݑ����d燲�K
<�~��7����h��� """"""�.{C G�(: �֎�H�S�<��S�d��?_�����+Җ��wȏ�������̧(n���������W�P ���DDDDDD�u�� �	&�	����l���_�w���R������d���� E��QU� p����дr����G�7�F�JRD��m�r�&�	�fP� f�HDDDDDDDU��b�p��){��+/�+Ns7� �(W6�h>E�5�� � ��+�!""""""�
 ���PUU�F�������݅�/�S�	�5�!���������WL��    IDAT����^E�bV��8N@U1��g<��<��<��<�2�S_��>ߺ��EĆ
��ŷ�e���6��[F6������8�j�k:wL:�G7�ō�����OP�9� �֕�}��  ���qv�ć� ����T�~�Y�$L&�
��g7p�y�5 �ʕ�6��$��翶��U ���	�o�{ڣ� |;�wtt4 �qz��?N���j �g�qGv�'�����@II	,�o<`�PshC���!��������J ������5�e�?Q� �XI��]���SL&\.��9��5����Du���m�ϗ�2w=�����0!��U �3���
D��
 �#���t��G�-]  ���H/�_QDIʢ��&�	W��b_HL��` """"""�& �V+,V��.�������S���h��������YJ�K�E"""""""� h�M��0�_}��y�ر�O��n_k��j4�[}Z""""""�lYt�k撿Y\,F�����ҥ�8p�7̛���x����8���]G2��R�Ŷr[o���CDDDDDD>��v�1v�(,,���85D���{����TUŝw%�����~���ga�ADDDDDD�M������ݺM+|�����9�e9�?[8}�v?���N�,��}�F�p����cǲ��ǟ!�~_Q�A��� �n�,]�ҹ=��K�LD�&�x~B2,V+.\����<�V�֭����Y\3�:�O��9����}��:�m�ȸ����,�z �����yLe���3���w:�������o��a�kwl������Wy�I,2.Bo�X��n��a<Ԕ'����f�8϶Y��^)�#��̒�QHo X%7.Ο? �X����y�, @D����H-��l�a\��dLnR;ן'>��b+w�����Ev|���� �&�ʗ-�.h��x���� ��ڑ�T�
111 ���σ���޽�O����P��wO��e��<��>[C@�P��w�_����a��G¼y� ?� �z���9��osq��Y<���x�����l �]w%�{������ ��,Nb���������?������r�G������q��)<9�1<6�a�x�_�e򇒈��������{�,\�&=�-��˔%8t��������A۴իעo��H]�YY���k׬���9�۫wO�]�=�� ��������7T*�6z�����5�㿶����.��5]ס���/������Q�F¸�'��fƭVf""��aj��֞=����8�<�N����?�[����� ���|�i��!����1�/���G\�J�ݩX����5v�#""""""_q6��9�x�����k���{]z$����� ��i.e�{��o��m��z��>"""""""��F��Я���pI7:��y��+��Y���+w7_�u�dp"""""""���F{4j�}n���F��j���Ef毮w�q�q׻�����7 !�?Z�l�-�#q� lذ�����<t�����h�8Ҹ�C� �M�8�Hs�x��i���6�z�h����L����+��|]t�4`�M������  ��.�>`����xƌ�;�H@qq1�7Q�N_s4<@�懈�������j4k��s�0m�L�񇇏ry��_pŴ_��2M�u,]�K��0,S����&�$�G�u�Zq�����8u�!��Wh#�-�~�z @��<*ǝ�E{ ���1�g�l�<��sJu[V�8�v�q���PoV��"�\-�o:f{�)V8��z���C&~ĭ¸���Vo�D5�	�!�����=¸�I<�zfq\���h�SM2h�-Oo ��l�a��9[�WƋ�� ����M�
(V���Z��%.�����Kv���I���9G�!\��k�C}Z��זx���~��?�5� eѫ����#�xhP����W����h ���n0���� @T����O� ��t�a|�{��_u��e�����Wk���
�������y�� ��$| �(p�Z���5Ռ��ٰ�)/ׄ��]O ���a<22қթ�f���*�$LH�i��3�	�UDu��|�(���D�}n/�9. ���!�d��d��i�� �(�e�ɻl{U)w�o{m2�5�#�q* \.)Bxx�� z��데�����[�\c��d�Y\���Q=��b�p��){��+/�+Ns7� �(1W6�h>EQ�=��jDDDDDDD�����`��*M#�����p�����)�EQpޫk$""""""*��g����]�~]�c���i�#l ��@?���5�p��ԑg����� ���0��s�.߻#xuG����I��zui��*�9�ݸˎ�鿟ڞuA���w����4�[F6�������ǅ�S��q�Y�x�iӺ����Om�ϝ; h�ȸ睬����Ւ��u�q>oG�K���Z7_-�+%��x��9�x���
�7�]v8{�, ���*���0�,�������Oȷ���\��F|�ҏ�� ���T�,����qY��Z�0����[��� �'{�`�j?�>}`�a<eJ
 ߝ_Sթ PRR���G��;���
 �91ѭ�k�Kk�(k �
�$�X�.Yl�)l ""����/N�Z�w�,V�M���  ��j�a��Q�J�㾶���3�=&���-���X��/S_���d��~�'���U�&Q�OhT h�E�m=l� ��uEz����"JP��f� """"""�% �V+,V��.�������S���h�����DDDDDDD�0��%4�����Uǎ��y>)�ݾfC ��-k����.����bԨ�hߡ-.]��~ü��x}0������c�i���oM���d�DDDDDDD�T���5c�>���B���SаQCt���曋�wg������&�b55�)���� """""��`oнz׻u�V�j�7(**FQQ1r�]�f�{� $�1 ��`��]H�"%%% �^�ތAC�D�fM��W��.����]��bq.[�g�c��o��q���&O��(����ۯ7 `��X�d�s�� ��|7����
�~�F �=Du����)a\��XJ��� kԑ��l��F�6��a\�������c���G,� ��|�a|�[~�q�dwdy�w�nˣ?�V�xF� �7Ϫ���{���|�UBw ���V���
�m$�R�F���>)���x�Z�Y�b����*��������� n{�����b @dd�a���HVE ����n"G�ˍn�_��R�*���Fz@�G�̙3��G����ս���F6�}]�~�z��O�ď�Κ��0n�r��PK�8��|��Wv�Uv~~W�f ��E��V� pMT����;�5��b�{��?�w������ONw����z�>,��G�� /�P��w�_�����^�n�-�ތY3��ŋ�����@�=���T ��3g���_ '��`�0^}�����c�����i8��:�+�{\�7����L�ӳ8UXv�?xȝ�����_�EQ�܄d�:*Sw""""""�@�)�IϢE���2e	��K�c �Y���� �]�#GG�� �8�ݶm'��WX��^�����c���nن��v9����k�|��ǳ �k��m��º� �[z݄�k�;�k�[�QO�t�_Vw"""�+'
�}���.�/�q�U|��bj!�_*="�W����RNU�X�0�x���b	︑��ѭZ��zd�5Ά oڳg^�<?<S�����}�͛~ 4o�1cǘ��;�/���Mc0�a��c��7��$�8�����a��c.�ccc����|������e�[�6���ye�r�V��DDDDDDD��'= �DN.�{�C�9��~�
���<��a���.�;�?6�	hV�f����Ƙ��Da�܍  %%%.�����i��o�{K���9�[-V����DDDDDDD�N|��~��w�7j�|�D.Z�j���R�?�۷���k��uaüZ��y��+��Y����-�p�T!b�5u�/��2u'""""""
t&��G�7�4j�}n���F��j���Ef���׫����p�M7 ::
�ڷA�ݜ�ӧϠ}����j���~� �&TUu�)��:z�$$�G���Ѣes$�69�[6��āмy�5�EBb�����?DDDDDDD����������0�G�i222��O>w��ӏ�ѠA(y�!DGG�̙"�J[��'%c��~���_/@�k����\���޹n������_ |�]�}�@�<�|�-�j��ޞ����HY�'��t݉���������8w��M�)�g���Δ}m�i�������G�� U����X�d�.Ya�LII	>��<a9��{K�_��1}��[(^^R@D�haܪ���e��b D�H3�7�.\��$Q�ER�U��y��-�*._i.��^�A�6�[ ����'�� U�a|�kK  	��.O�?�t�0.��[�����[�j�}���t[�wyh=�n��U��0�G��S���8��;���~���*��F�v�١eda<�<��yqf��gy�e?P�A�q��M ���_0���� ��\ ���z�湷.7b�����d�OY��0�x�
m�/��?�Fu������i����xn���g^��0���-\���ի���,~�:$O||��>�?|��u*/�����j���^|e�w (** 4(��#����wn�p)������T ���6Q=`o���DD5�S�|���a=�����D����W[��	P��;�^2{�8��h뭪���� y�0oV�
��QG5�݈n��=�mc7m�߱��a"?S����3� ���m�IY�}"""""""�L&�L&h�fo���_�5y�m�*��m�M&�gt$"""""�zL��%E�����Gwdp�����n��B�l�����������K Ť�¥S�W^�W��n<�3 (n��W�n4��(�@DDDDDD>�@pp0TU�����~mh8pwa��E�����������S ((����ro8$���(>�QxL��T�$�n�Z�'{�c�w�M0��-Ƀj�䩶�m-�[5���4�/�X��[, �kcZ�SS���{/� ���#���Q�� ��i,,'2.�pzFV ���Qy�ݍ���_WG�/�$�C,��?�����"bC�q���h�g����w]���"����/76ο�tn�0����q�I�-k����X��Ν; ()5>��t�, @dd��"�=�����I����ז��
����n���YGv�����m�d���GT�~�x��?|RW$H����a��w��Ӓ���P��_��Y�ѣ���O��e�S8���������Q�xGpp0�͛�Y�f����5�Z"����;�u�����pa����o��Z.Wj=���<�0!��U��|���mc8���������n��j%gC@�-��3ϠS�N�x�"��ۇ�����z���{��/����庒M#"""""""�r6L�8'O�Ę1c�N�:U�@UU�w�}8t�pZII	F����QU8ڵk�ŋ���EEE8~��ˌÇǐ!C�(
�lقO>��/_�[o���M��W^��b��p�ܹ+�=��3HKK��ɓ��i벓���7�x�=�Z�h�#G�`Μ98r� ફ�³�>�-Z ::�m������ꫯ�SO=�V�Z��ٳX�n>����mDDDDDDD���! //7�x#v��q�L}��E�~�0e�\�p/��"F��O?��󟑖����z�y��p��'�|��.�����s�!99/�� ��Þ={���/㡇���_�M�4	�}����k4o�4��!""""""�˜Y>��S$&&b֬Y�ԩ��LC���e�p��Q`�ʕ�ݻ�W*��W_����(**��իѾ}{g�C�Ά���BBB`�Xp��y:t����J}��������2g���;wb���5jfϞ����o���� -[����?��޹`e��G�O �x�"BC�r4���gϞ��?гgO�y�ϟ�	&�{��X�h��5�)Ze��$Q�,�����$q3
}��S���k�=���Ia�$Y>��x ��xy�Ֆ;"'�0�s�& ��%��K�ZIʗ}B��j��S�*�;�Զm%�����qq �V]�G����j[ܞ�"Y���.+}�O�w��k���Pa�����x���¸�{l�ZQr�� qV`5_��)f�/�� m��3�z�v|�a���ٳ��	��0^\\ (A�a�����8aU9�����o�ģ�CT��SQğ����E��';��>@��6�:O}��_|��������/#e�O��8p��^7�?����N|�
R���=#�K��;�o2��c���X��g���>0;;3g���ѣ��#�8E�;＃m۶y����nc�����o⮻��ѣG��8c?����ۇ{�ӦM�ҥK�p�B�׏�������.Q�&fdd��;�t����F�֭�i�&�Bt]��d�N���BUU$''#7�ʻ �O�Ƃp��Q$''�!������gY�\}�iA��'@E���e8�D7�	���	P�;��3�y�<����ԓ����������W��K���h#�* DDD���oGdd$bbbp�w�<s�|�r<�z�BLL:v�[n��wt�s�M���~��1�����矣O�>hذ!�����h����}���ϗ��'"""""""[� M�0p�@$''�j�b�޽��?��i���Ø1cФI�>}˖-s�?��C�?�FQQ�q�iU5n�8���c�ر �~��a������1p�@<��3 �C�����hG�* �;w�'Oθf��Y��0��~$''K�2D�>33�eڀ0e��8q ���?��{��������/�KDDDDDDDW��!~;y�3�aHH�={���VDDDDDDD���`������Ǹq�0t�PX,�ٳ����w��������j��n������/��5nO�$A�$Ͻ��E����־/_<�"ID-+_�,/Is����qMR��G�񄵶�{�x��	��g�nø�j ��^i�6� `�Ƿ�Kc�yn%il�yp-a���{�y �r��<���%�k��g7�����v��x�1ۋN���GMs֯������^8D�E�<ޞ�1�	��lq���q�I�P��V�7?e�.�y��o���<���lQZN�\zX\A���y���52�A�d�dI"q]�aւ������$?~�w�a�E{�����]���=G��%K�7+{�5ξ�i��oY\v��  v>a�;u��e �E'�f�+ز:��U��P��G�������Ȼ�G Q��=jL}��:��`��o��R3'�V#�!��kܷ����q�(O=�,S�*�У�7.y^;#-���G��ç�qY���Pq�9�{�#���������7iii�ܹ���ADDDDDD�WΆ�-Z`ƌHMM�g�}�_|�dP��HKK���_��r�������H�9F�ĉq��I�3����ԩ�t�p"""""""�]�=ڵk���ף��ǏǺu�\f>|8���,\��<�BBB��~��aΜ9X�d	�̙�k����2ZOdd$�/_��;��۩S',_��9����DDDDDDDT�G@^^n��F�ر㊙���~��aʔ)�p�^|�E�9�~�) ������?�����~��ɘ0aB�+#Z����ѯ_?��������~�	����:�&�G�{b(�q?u��x�g��|�#!t3W�|��~���CSȶ��dk7K�x�:����~�0>q��h�v�� X���j�ږo�e�o��8�ֶ�0n�J��G�yn����{��  ,[�/�xt�m���cw��.sl�m���⍷3%e  ��Նqg�j�^/�C�*�]�]�������Q�#����tj+���^:��l"����7    IDAT���/ƃ����&���$y�oz�a���� ��%V�xqq�=.��Xr�p���3�� &'$�/P����s��/�K�?&���*�������C� �2�u�|�5�͡���ז  &$T�|w�+��c����9�+5��w����7>館^]����{aa����Ƌ�������#�xI�����q�ZӮ�&��>���w�>s^�|��HLLĬY�ЩS'����e˖��ѣ(((�ʕ+ѻwog|�޽����ٳg�e�\}��	��h=������`6�N�TUE�>}�v��JՑ���������عs'Ə�Q�Fa���������� вeK<���x����������Ř1cp���"""&S���ֳk�.X�V�p�رcn��&\�t	�w�T�̜Ta�{��s��5�Q����뭩�'�غr�0~��NPdd�0^�;ɳ�3���	�<sX��!�+U�GEe���pz�{�m/������Q�*�����Lܣ)�r�0R�GW�Ƥ=�d=B{%o��j�+���l̜9�G��#�<�lP���m�fX�ĉa�Z��k�!::ӧO�VeD��4�ׯG�~��c�������΋}Y��������ܣ�edd <<��>;;�[�FII����;b�ʕ8r�6lX���ֳv�Z���������TfY"""""""�7DDD���oGdd$bbbp�w`߾}Ι�/_����W�^���Aǎq�-�8�N�B�N�ФI�}��ҕ��f;���Z������ȑ#x�ǐ������Jב��������h���"99V�{���?��O�L�7oFXXƌ�&M�����X�l�3�`��?�������l��iӦ��ߺu+f͚%]`���s�a���.�+�,Q}���s�0y�d�k֬��5kc[�n�֭[��x���2���l���ӫ��l�DDDDDDD��x�x�gw���AAA�ZN�5a��뫗5"P(��	�����-�r�'�M:��5' ��׳�	[��GN�-�xT�p�x�,�xyYRM�mhI�0���c���;���;���A���F#�.�8_wJ� @|�4����nF5n�`�w}��펈�#�"��6n����{��2��0�����<��A�a�����qɠ�Ҵ07=� ��z�� `������>;�#O���0~g�$ @tt�����i�tY{�&K�}?$��% �wi� ?q��� �~��/�����K��"�C�+�+��X��PM�S�������������=��w��|��[�;���tQ`s���]O GO�U�f��k�o�� ����)_�I�ڭ�?����ʳ�2���qO{����=yU��G�����i�U��)�G Q= """"""�z�DDDDDDD��
 y��(((��t�arG�u��Ѵi4���(NDDDDDD�O* B5AUUx�[�^�a�XPPPȆ """"""
H* (P��*̪
�զ�GӷZ-�����u3s\�0��Pg�S�۬�&��,�~�c���;zZ��&)?�x��ţ��0� ��7������b�
ø�ju�a�W�x��;ㅅ��W�&7�5Ͷ܍����I��W��� hՉ�}�Ѫ�x�����,#�\}=js����xp�xTg�`�0�HF}�%��5������ l\�a�ƻf(�PQQQ ��Gߙ8	@Yv������0~��I �7_�e�Qa\��Y����Whqq1 �b������s��P���S������� ̋�
��J}e���x�.ͅ�O��fu��qc��ce}���W�q竹�Nw|/�eo�}~�vk+��}���[L������C����+������(p��� ]����
$�fE|���a�""��=�Y�a���pyGO����yT����;����<�kV�-��L�1�=�ܑ����B}���{�m���1�������@'�����t߱��h���x���Y���[oE�޽�]""""""���=����t���a�Z�r�*�.^VSu��ڶm���$(����\:t��U""""""�zD�#��я�y�8�i�d�5s6�������9x��'m3��=z��� """����}�GQ� ���PBBB�zr����jN,X)���ςr'���"������	�B�HQ���(B� 	�$�$$�%����1;�l�y�$���$����f?S���y���KDD�!��y��X�`1>�=����E4(���֠��W� """"""����(�>}��{^�Qt��!�mj���.]��u}ǎq�]w��EDDDDDD�	OE�޽�o���мy3z����mʂ�`��j-��o�AnM��p��p���(�5���K�_^i�NI�gI�;��������m���mڋg�u��Y��<`����  ��)�N��kz�1���F�q+IIz�{�z�[���H�6͋7{oW�$�~���� j_��j=��������v�fE��͚lwV�j�0�����p�_�<q}l�C�� {�rKʻ�� ��q���+ �Mۙ�EEE �2$[�!K� ���ΰ��]�C�u��'�ԅ�	�;o���X��0(e<����6��!�ܨQ_�������Z˥�n���eu�ý���V
��4������}���k�u5�>u���'՜���=͚5Ç�f��/MĞ��:y���FDDDDDDD&<�q��1��|E���aw�С�AoTc����(�q��	��!^ ��va����\Ci���rnV�0wH�x�(9�-;c.#;_ODT_Y�0�h�B����c�������3����%������W��0��ٽv70�������:��nz}����Ո��.ط{�⇄�%��l�أ��Fc����7�m���Q�	GDDD@�<hҴ)����X|�bU]��A���;q��W�f[�l��\�-""""""��H�бS�1��8q{�♧�GQQq]��AY�h���Ϫ��~,Z�(D�""""""��F���O��֛��U[4�ۍ9s�`	��Xc���p�\!n5��Q�c֬Yp�\����Ǐ��YDDDDDDԈ�"S�effb�b�N쯿��a�y�غl�PD��θ\��|�b�O'�� �J�O���I�ߝ'��:s� P�uL�\�lqu���C���k�LsYۼ<�����O�M6�]��G/��m�o�ޮ�I��K��=  �N��4oa�n���6���:,��66A�G:���C�Gh�:�N�x}�I���!���8ĳ�k����#^�ט� ����n
 �� ��������p?V�Ǐ>Y�^A�^5��3��5T�����c����w��qo,rrr  ��i�Z�n��sƎ���n���Aw��?���+=u�8�8O�l���\���x���*��� �(�NcU���V�d������/�_�u��@DDDDDD�;�7�3��\��M�����������!>�?_�˪ ����ϸʔ}�Cv��^g""+V#�H�/?{�4���g ˗�o��.���3>��S�Uk;���mu��7���o,��t0��P���#�cu&��
3���#�9 4M�>��ސ��N��4��IDDDDDD~��~ [1s=�V֞~?j���!DDDDDDD�� ЪU<�-��킢�#��4MUѪ����DDDDDDD�����Ih�������������'#""""""��	 ����x<��v�Dw���>L��J���(
E��C�t�Uuԭx<�9�:�QQQ��#�#�6E����G���|u_չ���L��zD��^{��Ŧ.|N�0/�:�k���	-M��Y��СZ�	7����������v��_��'1N����<*��Ĺ*��v�����C�S@��~ݒP�1� ���W��'��Q����b ��XU�:��_�&P����/ 7�.��ଛ��Z����7T�:�:�vm�m������6�<ub�0�*1Q�ˎd�����>G$z�[�KLs�y���{M��5� XWW��� ����r�|�UU��� �>��Ձ~��͖SE�!��������' 8QH�o���;���[�[GT�":C��r�@QU�xJ��I�������3z�3v���<"�)̝�3v�sj�<w�0wH��9$}1�,q.9%(drr��Lx�*~��IδQ�e5�`����Lsc$��esL�3��jGC�gOD5�iDw��s�Z	�~={
�v{������~� ע5�
��|��/W�U�?�(�J��{YUU��@DDDDDDA� ����e=��6��{
��,�^ �G�#��������F��<�>�쿆b����󻄺 `y_{4�DDDDDDDDv��5�V����.������.������(l#'\$"""""� R_?�><=�?������}�}C�N��Q09����֪U".�CWL��x��IHH�Ǳ�3�8&����`���#>!�~؁�f΅��U��ok�����;o�W���?��˺t鄉/<�����Ⓔ��Uu.k+����*���ř�_7?~<�-h�v�M�y%s[���vR����L�%2w���{�P�Gd��OD�:hz��^ �Z��i�z�ۼ<qÓ���'6ټ��qo��8��ś���k�p?�%�:�A2�lV`YՑ��(au�0�p�'QQ
v�saj����J��|խ��'N�r��*..PQ��Uu��'דyz�[뇚Qgފ�N���Y�e��P3�?VU%^w�p}��3vʰ�6�"'' �X�V��eu�3v��v�`߾���������̴la��􇄹L��焹���I�>zM���۷y|%����W&���i?�F~~>���1``� n��&��[�����Щs����4��`�;q͵�������c��(..��@DDDDDD,a3" ""}�^�9�?��iغ��σ�b��(//�-�՗kq�ޣ�f�z��w>Y���94���_�	O��3>� e�e��p��^�c��g������a�H�Q	� *��Yy�����������\"���+��^�g��8=�%�����'$g���������✈ꯍ��eM���H�e���V#��:�[]�����qC���ק����R�#�(�=�d�0/̰7b�w��П�����p:�عc `��48\��r����]���C��I5���()9�+�� pi��(++Gڏ�r{��ǃ�������������ј3w���S�a��J�yW*(+�w�C��y��7�ߌk��͛���k{a�p�������ǂ������.g�  �:wD�N�׿L��0!!o�5�:u�o�e ��Z! ���$���O�%�+۸�k�~��8��sp��a�G|ˈ���������II�m?���CGPVV��9r$۷�Dʟ��Β_7h ڴI�9�$#%�?6o��7�A�k��oAA!~ܹ�������Ç�����5�S[Q��P���6��4C��W`�ʯL�/W�A��W�y�^����[������k/"=}V~Qy=y^u���m��_��6��>��SQ9��DDDDDDX!�#���#ﱞ�~׮t����~���WX./��~�Y׹]n����[����k�
��w��ʤ�n��7vqqq����㶶߼ysa.����?��yIp;�f����5� �(�Tw��Ҍt��H�0o�F�^_PP \/11 �)��y��[綃Eu�߼�_l�y����㒢���b�]�U�V�� �
�L�摧
����\Rt����[�Wnɟ	w�K����� X������ ����L��}�@�>dU���^[F��`����n?��^_����*�b�� ��v�]ɨ2Yp��g�*EC%{�5^��jQ�Y\��ԉ���+��#+�>~���%�/�������^��f ��	v��>G��A�;|T>�_�zy���H�����{�c�Wkq�ԙ 6�&MU� """"""
 oG@=��^6z��b�b����(//�w����/�ۯ����:�2V=i��3��>c)�Q�}����Ӧ.q�c��˄���1a��BaND�c5�`5�`�X�t�i^�ʪV;작;e���eB}Ɠ�����Fvvݶ��T��=��}C{�QK(P*�(�~&�D�"z��ܐ�_�{F<�&՚�1�� �
�N@m&""""""�)�#@U��*<��/�;�~��X���T�@���*4gTg�>*�������(�� PZV����x'��]@�	�N�jRD����Rg���8�x>�͡:�Cȉ������j�	 ����3��g�W�����a�=�������f�)��p&�3�͠�#��������	 ���p:��2��>Я�R;�ܞ�(PΦ-�8#�8���Ն ""��iSh��W<���;�ھ�:�F��`�ԭ�ު�o	��L�.�K�7R\���$q��"��c�5�3�N
��7�v���8��@�G�.̣�����Y٭�C_���>a�V�-�xs����� ��5�ح�qu�.¼I���'�!~�"<�IP���QTU�9+��H���y�x��ko �v�yu�+nx k��xZ��`�i�RP��n�;C�\�u�*YUY���+ڑ+̝'���׏Gr���z��+^7�o:	 �l��\V\��j<o�]�"X�V=��an��j[ucݴu�ZN�9��sfƎ�5nU����?Ȏd���4qՈ�ϯ�����x ���k�u5߿�������FGDDDDDDԈp�9�X�Ikm����6jIp|:�^aޮ�E�\��]�ؐ��=��0�6���"�=�� c$��^1�K�������Վ�36�>\Ψ���%_��M��yk% ��%{Ls�#N)�Y=���6?S�9�m�����|�ս��EX�éP7������� ' �v�[��Q𭉸5�M """""��s5"� """"""jD�@DDDDDDԈ�j@=d����e������:��k��o��Y��u���x���Yŏ(��c=�|g��P�M����zֹY���e^g�}���Ǐ �DD��v�`�U=�5޼���٬���cy��~5D��TI�s�G��q���_r�>+v���M�'�<&&�4/))PQ����"}9W�Eį��ų2��:@C#��n��z�9܇�����gt�va�H^_��G���qҼ^�����,��ODg�?�=>H��*̿JL��>~���e����iL8"��������i#���?���_����C���OZ+�{_�F�:�^a~�О�|���9��g|����� ?g�����_^��'�e�kXSg>lz�1`�a�Q}T_G��g���ϿT�|#>��3,]��t8���������g����7Qc��Հ}����k�=k��={����AmH(�MDDDDDD�X�}5��o�A�����_�-����M�6�����ﺾ}��;�@�6mp��L�> �3����
��>�j�
������o���ܲ!5ٷ�(x����� ��/0o�<�$5x��Gq��W��ѣX�r�Y�>|8EQ�e�̞=����M^x!z�!�k�%%%X�v->��#��IDDDDDD��F���/hٲ%ڶm�.!!���Ȫ2wAA�������]�0v�X���;���ɓ1n�8���:t��!5����ފ+��&L��	p�5�`РA�|Ȑ!�袋��O��W_�� �O�>�۷/&N��'�x:t��w���Ǐ��[�b�ȑ�<y2v��)l;Q}���(
֯_������0` ֮]U�/0����={����[�l�y�����8x� <�+V�ꫯ6�&��۷/V�X���ldggcŊ0�b��>}����?Gvv6���Κ_`���X�d	���p��Q,_�ܯ}QQQp�\8y�$~��W�ڵK�v""""""��⬪�֭��ɓ1o�< �A��	ХK�咒�0j�(\p�hѢ�Y빹���9�6m�3��d����8r�	�c]    IDAT���#G�F�n��o^���@۶m�������]g|�  fΜ�q�ơG�X�p!��Ҥm�OduDÝ�:�vm�-�㜽F\'}f�y�e����C�	s�Wp `����{�
��]3�N
�M"  ;���]; @z�x?���¼��K�yt���$7{ ���z��n���  :&�?FnU��j=C��a�$R���v�
��S��o�1qU�C\�\�nq�s\1j `��'M�o{[���'  ���sUEEE ��8q��^0�~P�x @||�p}+ *����/���Q����:/yy �x	�t�f�4^��\�������^�<'' �Xذ>�R`���t���N]���eܾG��1�e����%�ggu>|����֭<233}�*{��'�v�����#>>/���_�(��e�?�ٷ�igm����r��������o��o�5mǦM��k�.�r�-x����'�`��������: ��|����(
���+��?�|���k���D�vg�UNNNƏ?� 8�s�:+o�:�>|���c�B�ѣG����Wv��!�o��7o�lGaa!�Ν���,�;�TmV=����3�յz���<Ԧ�Q�cKԐ�]��0O�k: ��e����xtۙ�Lan��:�a�rV�� c����DD2q}:�^(�P�6����t���H5�r��͸�������w0_U~~>�v튄��p�g�ƹ瞋v����oĺu�ՠ��{�ʕ��Ю];��W�^��7n܈o��{.�9眳ڷt�R�t�M�ݻ7q���W�^ �f͚�_�~���GLL:w<�d""""""�z�tD��'������l�!�s��ţ�>������;�ڵ�_�~�z���HHH�ƍ�|��j5�:�^�f0u�T z��U�V��e˖�����o����|̝;�<�/���ѴiS�5
			(,,Ē%K|����'��� ���x뭷��v""""""�p��<x�_��k����s�N�e�n݊�[��~����������'�|R�F�tߚ�a��X�`��������o
���W_�~���ɓ~�DDDDDDD��W��������abG Q#b:G�]U��R(�lV&�*�#��Ta�*~�0�t�$a�ZW4q��j���t�0�i$ ��"���Ѭ|a^&ɛ�0�ި�i��|�� �e�����w���
s��j�0�:�8�t�cۅ��!~~�S��O��>y�$ ���m�_që ���X��x|K\�{���p{UA�� �������~yHP�/�R��Mů�>w�-�7~2N���/a^RR (orv��ʪ�m6�^ j�:����M����ś�%�d��e�eR'�?��S 11���e���  ���j���ѫn}:�^�<ۛ[UO����`�pD Q#����rx<h�f9S? aV��^0(���Uට(
E��SPT'�:�}5���꥞�u���'&&F�#>_2�4?�)H;��|���c�H;Beก�j���ŏ�Z��=*�e#��⪵�ׇ1��?��]��M��yk�~�k�����Aj5�Ͽ��C����B�����R�\.x<_P� ]������� �����UUP-��8��N""""""j�� �q+h��� �교�8�)�o�V�PU������DDDDDD@N h��E8��������.��o����ؑ�զ�*��8N�_���$���c"�W��0����������V�23EiY�>O 4@���<P�������{�V���T� �̯��Z �3�G<{:QM9�����'�
(�� ���\Tt~��;�7�~l�n^�+li��y|�+N�vРy\P�|DDDDDDN@?�w8�qgBB<&Lx
7�t�������>�/<�" ;d�3v46m܄���  Uqx�逪�m�qƌƦMm����U� 7�Y|%�B*�uVe��/�)�]���C���lWz.�)���5�  �牷s�@�0o��%̣2��^��q}}G�i�ٛ�����r�����!w�m�*��D�ʟ=�.����g���`�9x�tӼ���uu�A)� ��񒖚�[��7��n�UK�ԅ�	�[o�$�es;�������� en֡��c��Y��N|]ں��0�}Qa�:1�����,�]x�~y�����5����k��O?d���n`]=Av�ɞ��y���1[�� �:bbb�r�
:t��=����;O�!�L�6EFF��~ii�|m.//ǥ�/ ����x�JEӼ�� ;������(����Lz <>�14k�#�gΜ |���������瞟��G� x�x��7|=�9��p�=#��ϠS����؋���+�����eKp�m��sPVV���b\{M?���-7߆o��N�ÓO�Ã������V�ſ��ӧOK�_�To��格��%��sm?�v�v�(�hh���,5<��Ld�	�~�c����� |��Ӽ�U*ܾ1��ι�7n�ǽcBK[�_�l�0w�s�hI���K���H "�-�3��3�K.l��4
��lE�������1~*���L�cG���[n�-�܆[o���7җ��I/�/���+.�<���+PU��r; ���y=.�}��T��m���;�܎;�܎aC��u�������&�����~������m�� ��h��q��������*�Fg����j �
���3`?:��o�����r>��#�۷���Ǉ���;��r �5�}�޽���1o^*.��"�\u8��Y�:�6|�0c�,���>���b���1x�M&�����o����&��?gwX��� NHDDDDDD��,0��uW �m�o���YYЩSG��3�g�~?}�4�5kꗫ�z���^'�F�Ν0u�k�:�5���nC (0F�3��������7G���9<�;Xn����Ό�ө���������nlW�UU=k�U�mCUU<��X�z��6�!}���o��������w:��Cܫ�q�&�y�pDEE�晙Y�б�����#+�߰���T�N�48�N˼:���������(/w���iC�~ xGp� """"""
����9s��aRS?Ĕ)�a��L��Ţ�e�b��ϰp�"���|� p�wc��9�g۫������uJ��?���M�"//�ud�x��0iҋ�i��HKۅV�Z�u�$��iC �FpP@�4�������]��ֺ�8�a�����]E����I;�%/�3��¼i����͚5������$��#��[9�M�;d��d��[��,��� *�TURR��:@UF�s�� �R���PS�:�T���eu��1|�0O]�\P�/'�
 k?�#{~Rx�M���d��#��OO�"�!Ο��ga.����tqՂ� ����4��?�R>���b�9�<��#�ϻ� !!�O�Fzz>��,]�)����`�< ��ycѢ�~mP������_x�e�4�y�;�n���ϵ�ZG��/W�ALL<��$%�Ʊc�0g�ܳ�wTY����Ͽ�+�����P1Y {������(��2"  ����_�t���~f�;3ޝ廾r.��R�ew�L�E^��}��|��~۬��l �t�r,]�ܴ}WY�ǝi��Jn�҆�2�λ)�S����+��q��T"�o�� �=f�#�X��in5�`��:���6��^<�O�~�����v��P?O�B�%{�����3�t��� �i�t�}���`? � TE��):�����>�WPT�2DDDDDDD���PUDFDA�֮�8��/���=���JŅ��
E������v� �N'ZĴ@iY)4M�;*�X��M�@M�q������&�+P�k �"#��pF�(����������v��A��6�x<�A��\,�h��O"�u�Ry4������(�@�l8�릉DDDDDD�h8�ԙ����\�#@3�P�ո,��&�o�"+�]��+_'���qT�S��P�ĳ#��Z7m�0��e�����Zv�O/8�/�5ɸ�1ݚ	�i'��]��ra�^�H ��E�ۑ�e~?DF��[�O.� ��P�i�>(��-}�, [�-[�S{�����Y��8q@Eu��JJJ TT����H_΢:���� *����cg�j=jdu�G�<D��}~y<[�.|���v�?b�d �U^w�p}��cՎ���Xa���o�$~�����C݄F-=u�0?��a�����:`U��h�Uu�����{A��5kH�n�#�Y�f�����S������Y.���U�N��v$T]��着Bi�8��8�j�H"""""""	' DDD��p�������!`w�@M�g����PT�>a 5:�Ftu�j��O�r�0O�k: `��)��	w�p}c$��:�<�Hf��o��������DD�ՙtCa��:jI�����2�\.��TV�����>ج�E� *_��*�hM�88"��J""""""j����($Ʒ����}�T?�L��~9ET)A�PiQ(��6%8Rh�
;������(�� ע5�
L�h���P]����JU��9q��	g4QW�$"""""���	 n�.��z�?�m0��(��Y*�j<�p��r@������������^�ƣ�+I.�u�w�3	���m_&����L~?��+"""��/�i3���̐�ӪsE�4h7�q�1!"""""����O���y���������i��ǋ��w۱�cq}������q����˵��������UC0F<Ȫ#�t� �I�����m�����x�����mbs��:��q%Ta>{_�0��)�C�x�+�x�����<�����G���7Ϳ���ï���ݶ�xVp�&~��v��[��%l  |?��i�s�f ��%�L�KS�Yy[�ha� bccM�" ����PQ����q�Ց�KV�>�������U� ����'{����[��t�'̍�G+��V���#���v�~CƎ��nBHٽ�5�s_���s���ԉ�����Dan��5))	 pɅ�M�tl�/�}5������M�D�&� ���ǿq��1�{n[$�JȔ-�㐑�N�<��'OWP^V��㞩�v�N']?����t*�&id""""""
0oG@�ΐ�7^���(���4���g���ث犢`�]w�O߫ kWo�'��������x��i:�6�Nn���1{�G�>py�1(���ƍ���ƸG'����p�LL��~��W���zz_�11͑��g���4���'����Ǎ���ƩS��̄���}�i֓4�ڿ.��O+���PHX�0#V�x�4/-s	�?��81F�=ch����z��0�ya�yKD�X]8�*a~[�K�%�C���Wz\�GlX��e��>��>=.�#^~I���_A~A֭��[f���0}�,��ǃ�Fb��wa�7����������;�ξ}�������������CbB4h����۪meo V��HJJ��CG,����+����8x� `�������X�f�o�U+W�}��T֬ـ��=�=����>Wa��5H�q7  7'ϿAU׭���	@DDDDDD��!8��&%%"/��`<7'�m���9���\z���Q�nK�6�q���.��� """""�ƣ�G;zII�,��y��rE�]o(/+�� P5�z{D�+������}Sy�DDDDDDD� �;w��_�k�t�O8�s$��I��[�n��J# -7�(ڶ5/ǠiU\j��������>��˗�@�+/����G|�Çs�<�~��|l޼k�l�-�ވ�;w R�������>*�k|��*���q�f�p�u�m_&�;��m���m; 99��qYwd�?���(ҽ�Oo; ���i�|��o������y�I�:��N�
�a��K���1ݚ	�i'��]�i��3���G���t��O���s�ī�䵝��1 ��A���e���v�r  YS�`�_���o��i~�T: ��U�����eT���� p�`q���^0�~P�x �jJVg=�٭C/#�S_�uLh)̍�Gmgߗ����U%������J�0w:��?���ﶡ�  ˗�o��.|N�} �������~���l;ğ(����t�(̷�>"��S���e��������/����n�: @�ݫ���ZQ5��&�+..�Ͻ�!Co�_�z���(=S���gb��-ظa3��[⥗� |���D���W��f3�W�=ֿ�ŗh�c�� �7o���vb�� �Y��ŨQ�������<�d@���	vQ`���  ��/��wg�f��������e��]����}o��~�U�e���n��h���}�Iߋ�O�ʹ��i� ��>������������������r�gʩ~h޼�07F|�������� ˖�1�ϔg
�o��:�a�r2���`c=SGDDL�,�#�7,~H�_r�xDU�ĸ�)��/�k�Յ�
{������(����>�h �:�Ǒ�����������{&�l�"<�s���O&�:�@DDDDDD�w�*TU�����3�W\����U�������p���(����������&' ��!&���, ���N vT�":��G�:TUE��5��&�C\����������� ���:��p��}����<�b1�_��͖S�#�h�e@DS(��e��+�|@������[��n��f.�����ѭ�0��vR�~��(�7��&)	b����k�ܓ?��_���:������) @�����ĉ �k���i^\\��:��� #���� ��N�e��-�ṷ�J��a>�c������m�
ㄊ��Ѳ:������Y�e���9,̝g�yD��}���b�+�ͼ��-C' ,zA�"j|2v��t�(̷�6�1��n�����y����e�>�o�R�ȏ.���V�;"##�t:�e}�_:�샱=EQ�<*F�`G �4��M�$[�/]:[�7;��8/�)�=w���<#Oܹ��HSY��u����X�l�in5�*�3��H��S�Uk;T3Vg�)<��!"
�G���;��K���8���.��_�@|5 (����#2�$"""""���	 NG��C�x���U�\��$�+Яj�����hSR�#倦:��#��������	 q-Z���@��  ��Ui��O"��h@E꽬�*��9q��	g4��DDDDDD@N@����vY������ſD����ܥ���$��Ր
��n<�>��`���8��.AٶHDD�񿯠c�u��ʬ�k���q7�yB�F""""""jx���h�?��ࣳ�@�w��eY��@��u�'=�����]
�}<�	P_٭s��f�0P����s�N{�DF���G7q�P�H;].��tkfk��Ɗ_�s��h_**// �i�l��}9�[H�_��2�0��`�a�b<��� �FVǝ��ml����#:sYI�ԅ�����c�l�_ߩ���t�^'���ͫ�"��j���;F�P՗�(ś��	D5f��]Z
�Ή=�y�����^I{��^���S�!c�O�ZQ�U��/ 8�N�~ 2�g��S^V���	�Nm�Pi��0� """""�������.�eee�Y���r�H��?E���mC�E���¿�y/��~�W��ӹKGL|�)�{t.�v!n<�[�Bn�Q̝3���+���HH�������v�ԩ�xf�������<���ӯ �3��}�^ X�z>Y��׶���[oN��a��urk�>�ٳ>B���A��4�z�Fj�duL3�g\t�x�z$���^���(�=���
���ݝu����3�~���[��jm�̇M��/g�Xϝ���I��gg�m;�(�T����v�m�j֫��uUO�:�x~��8�][�>�fc������~�_}M/l߶�%�dҒ    IDAT%(<~sߟ�q�M@ƞ�y�]Рa�K�г�s:�)�m���t�@���x�����K��g��з�5~mq�0���xr��8~�ȷ�`�w� """""�@�;�g�� {f<>�����o�V�����ϿDv�A;��U+W���A�4l��5��u9TU��ip8�y��ذ~34MC��������������m�X����W_��_�����p��!�Y��^��o�U+W�}�QTT�5k6�}��v���d' ���2����'}�t�6m�1j�}5�>�uF��~��ۍ��]��;�н{7��)Ů]��V�q�=��� &�9TU6����D����~���Cr�������.��)EttT��Q�8�!5a3G��(�����Î��q��ؼi+z_�;�����配��ǣO�=z��=xu�?вe�~�I��cv�*_�y+&��1f���NyY���U�@bG K�N�ё#9h׮-����~7|��ݻ�y�����Blذٗu��+W�Fv�A4m��o���A����9���䊉QZ�n��J# ����������p�*�ΊY�+�k����WaԨ�����}��G\�Xķl���g ?r$�b��۰w�/8v4߷�����ܹ#2�ga���0n ����eݑ�� ���PXx��}�Y���z#v�� H�S|��J�Q���M8��jERÕ:1U�K֏���n��V�r��ϻ\����G�sL�f�|F�Ian��_�N�i��ڧ��i������}$�Uu��~( DDD���9���N�殦�L�/** ���R��?��a���ba>��!A���ha�p�;�=��m�S���W�07^V�����L��.��c���E�f
��(�W��0�).. ���v���SǾmlBP�k1\��cU5��w�ׯ/UU��>bz���;Q}���}� {�V�������ۄ�����z;���&��I��G��@�&����ߡI�h�s�o��ǋ��g+�ڵa�&<4�L�׻~�����}�]�Y��E��u��ޛ�Q���u�Dqq1y�ɳ��q�f�Ƿ�K/= ���5X�f����Qpg����� """"""
����k��5�݈֭uk7Z��a�flX������{|�ME�����]ޓ����pߚ�������e�j�ތ����.M��@���!̯��U���Q���e�0o��h�n_*�37�"�3���V#V#�H�/S��������Φy���IT�}�Z���+�������O�3^԰70�Mh�dg��F"T��O_/p�����
��^��}""�>����Z]81���7������������Ê@	�y���� � ΄�)DDDDD�Vq�)8���'�?�@u�3�(�|�^} ���՚~���PU�wj�z4��?�?���h<Z���� ��­Fj�8B�� ����Mí�5 � VbO��P7������V� PZV����eg�ʳכ�|�#!E0�GJ�着"��JD�!.FDu':X�n(M��s�XOlJDDDDΜ ���:���c:W@����<�b���כ-�xG���h
E�.N���ή,?�F\G4U��𧪒��tk&�g���J�n��"-�( |r�|Ď������� V�� Vd������ǏPQ���� �z�"�sO�����Ӈ��CO�������i �U��f�'Tj[�>ub}�����="̍�$U�.|N�^3��}[]&~~8�/���eS���|���������}٪j��,�.!�-�Q_]�]\5���}~��{��ݿ]v����{���c�_m�D���0�8&̏d
s�6�T���wDFF��tJ��@�>tX�c{���yT��	�� """"""
0i�3�'���~�����3���W\&�[��i�
��Ϳ
�y�������H ��n����������M����g��_�l�w~:]�?��4�r�� ���3��7 �%��)O�����:�l�wO��#K�#~jk�⇄�%���yǄ�������G�%DLN (++����W _ J�E4����A	Qu8��Bb|{h�߷�4����+��DsB�ڨ PTmJ
p��TvQ 9 �Ek�#���+_�J��QDE*R�eUU�=Ή�M�8� """""� r�,�.��z�?�m0��(�%��x4�.<���ǉ������N@/w��<�nK�bչ�i4��>&DDDDDD`��ךh�{޿ur��nt��gΔ"#�'�;}v���P��;Ȝ�N����l��/��X��_%��n�H��r�����:�7�@���w�3g�  .z�7��e	��^_R� ��y=���b ����`]�;�f>�8�M d���#��&�eu�$u�ed�7^_���Gz�qql�O�����|v8Ta�<�]���>C� ���8�|��W�����2t `ٲ9����o<��7���	׷K��#�u��~~��}����~C'���ao�0o� ̕��\��M��߽��OG2��8����[�G?�����ɉhּ�t�M�Ǿ��Pi��p~P�������^�vhaݻݾC;|����������r�H��?E���mC�E(++ ���'n<�[�Bn�Q̝3��,�Sj�f=I#Q���C��8v�0�/�qm��B܀M;�y��~�����M�Z姯�^_R^*\�	0u����O�70�M�Z�=n��}ll�0_��:jI�XՇ�����-�y�0|��п����;�?v��4���
���'^��<?�e�ۮ-nz�//<~sߟ�q�M@ƞ�y�]!�=��O�� """"""
,�#�;" \R����s&>�:w�藥\�_|�%���ر|�Z�=��̗����O{AI�	|��h۶M�oOu~�	@DDDDDD���j@8۹s����q�]C������w����� �i��Q��è�����|{Z�J��������PU�T���_�b�  8r8o����{�r6o�
 P��5�~��^�q{F�} ��N�Z�����<��5��GDDDDDD�W���b�ޟӼ���#GrЮ][�����:w+W#;� �6k�&�����/�;w���t���>سg���+>_�Q��Cff���q-c߲%��^�[Xx�;wD��,�@��q��')&Id�n���5ۄ��;�����3��[\�[:=F��zIK��`��O�8 pI�(�r�Eb����cg�cǎ�׋��iݴu��_�?�=6s��-̋������:��~�˼:Ǡ�� *�sXI��Z�vT�u�y���������[%�W���|����ڿݏ�鳭3��/�n���6 `���M��_�^�1�o:	 �l��<u�s�zɪwXU�0���~~�%�����}��+��O�o��ꉌ���թ�8���W�{S��iڃ�[� ���t���]������{���`����~�&M�qϽw">�%�/�短���.¨��G�~�`�{s��w����PQ5��DDDDDDXa?"�ĉx��S�ˬ[���n4;��{|�����G�3*��M��@!#�3���;u�
��S��^o��Ջ���ӈ�ZOVG^v���d�ߵL�Ʉ�nɈ�S�ran��:�a���!��G\e��=�l��2�N�W��7����5T��4�1;�w����h���(� """""���v�����R��q$"""""�z�黤(���� �,��+
4(��`g ����PU�����W�L��߫J����eUU�V#5P!k5LN (-+BLL��<Z���M������=����*�ݭ�D4u�@""""""jD� ���:��p��}����<5eכ-�(zG���ˀ��PT�Y����~���sw�K�yl�,a~I���jZQp'�T��������Y��\�M|;eo�������>Y�^AA ��3L�cǎ�~���� Ծz�%'�g�o��?�_����N����/?k��VV�M����7Fu +�� �Z��n���l�%�Q���ҥ��y�!曗����O���ٲ�	��
�U��꽔k��:t `ٲ9��q�ɪo\r�y��t�wU�P�չ��a�w;P�n_���.ka�01�[a�v������'O����ގ���H8�Ni�@�ׇ���`lOQ=���;�@DDDDDD�#M"�֏���#�Nf�#�gc$�Ut����]�L�Iѵڮ!6�����N#��^������4�=~�_���lX��0{ߠ�� {�L3 �{����V�H
��'\G��y����{�G�ɬ]��x��ٶ�OD����=�$�ߗ�'�#̛������ۅ�c�x$iMO]O��v�����r��� %�"�BqpD��DDDDDD�X9��Bb|{h�߷^EU8W`5��
���/��*ڔ�H9��(� """""� r@\��(*,�G�� ��rUZ����"*P�z/����qN.h��p ��g9t�]�C�y�o����@�/���ǣy w)�)4��DDDDDDD5����G�G��."""���};u��:ݺ]��ߘ�Ys����*\v�����X�HV��G�@���<A�75^z� M��;���#}�]�ۃ��B��s>Y�'O��g�X��9�����ƍ_��/�"*2R�^�m�d_���;e' �-Y�]&�]n�s���{��ĹV�yS��H�q}��>oǎ"U��*yG���E��


 T�n^ձc� T�nnŨ`EV]*��s�F۶m���C�������V�J�S�������݃v���${�l�ܿ���:�v��n�������y'󛇼$�=�ߧ��N���?���vJ���b�+�K9��q��Ɗ�N�q¼�������ׯL��j��8����s�a���
�R&׸M���)zG���N�c�4��ӯ8�m2|�>��o���Y�u���1~�35�O��8d����'O�����[��}Q����J�4�
��#�n�z�����ӧ������ӕ�w䝾6���'n<�[�Bn�Q̝3���+ ���31y�������zs����[�`�A̞���_�z���qc�r�1��	�m����o4�z�F�P��?Nu#.�zgj�U缱�t��!���ha���wƣk�i��f��}�e�ڰ�!a��B��?{wUy��{&A"IX�A�jUЖEpAb�`�I��"��-E�A���T�P�@y�% �BX�@ٲ����dȄ̙$3���y�Μ�,��$��u�s_�o�侟��ϟ�F��^���s�����-�!AG�wp��L@���}���n�j�k��~�
����G,��`�և��+�#������W�2���9�gfei�?)�qڹ��y�@��Jzh����iL�xeee;�����%I�f���Q�Thߕ��?6�     ��lD@PP��֭�fW^�>�w��/�q搼}�s�6��]]�3�re�*��O�u-�W��q#ܮ_�}_r��"     �������̸8�����>_���~�ƍ4�OT���ՠ�e�٬'OI?rq(ׅ�R�����w ��     �����/Izy�L����g����\�D�������W�����X2_�`���ܭ_�}W�s��    ��#�×-�L���v9�ߪUK%%�����Z?ԧ���    ��6G@�17��Y�����Z��O%I��Yjժ���KUϞݜ�;����~�D{���컲ϻ^�@Ey���X���<�p�e|�R�>�911������+�[ƍ��[ƫ
Ӵ�g�ɼɟX��缪��1�2^4+|�w�b����������q��Y��������>ߞ��m�uO���T��U�Y���4�xVV�e�A���<e�4���������c���ʴ|+�?�����eO��_���O]�<���W||�Ů��/9o��C˗�P�ػ"��?/Q�;{�ſN֧�&)77��mK�_r�k��}���b� �     �
Ȉ��������u��ۋU�?��?����?u�m��������dܛ}W�4���r�_�ȴ?t��<�y��v���l��?�u�vPIz��,u��I�%�缢<�9G`�0�K˸����X�{�h�e��K�[��G,�v�up�׺8�����������hg="�ed�e��呖q_[��@A!@�I������ C�     (��B -�S��y    5��1��Qx&�R�|���~Ð)C�Q     �\A!�f��f���(�ͼ�6|��Y5���/�m�ٔo�#ق%�õf     ��]�.�d�A�09��U�*6{})(��au�� T�`�ٔ��TFp=)(�2    �"vI2l�=�pD���K.s7� �H��	�J./m=�((�I
�a���O}����2���g����j�������{z+��l֗�\����G%I��c�ē���(�#�Ѐ�,�_�����~^�� {�sά��������V��/O�{�����wDD�e|���Y��;�2�r­�~��Nz��x���$II�_��ON>�*���oO����_�yz���$��}�L%���/(ԩSGv��cA_Я�w���?�0
�u(     |�O� ��S����s,�~��2�0���N��	��}_�X����z�O�?��5�ܘ�a����.��_%���� TU�~�x���z$���{��/������=��$�NNy	�ђ���-o���}�2�$ī�_V���������qi���� ���PvIAu��%    ���K�=��E��t8\�����\�ed5W�K׀���Mѧ3��+��      >d���aM���Q0"��]�$��.�,�_X1��\�޶�l���]�3�ɰ�H4     ��]���󕗟�~�?��P��g�pm�X�?���/H�\�̯�,    ��]*hg�0�ki��qW\1MS�#_r�K�&     +�`��i}����q��>N+0���HީC�,C*|=(�?���ɼɟX�o���e��ް���[��9{�rf����Y���|�V��޽T�;@M�c\��'5�����{��Wݟ?�����>ߞ���b˸uԳ������e����,�&Xw=�����^��r�"�~��b���o5�������ֵ���v���:������$5j�W^��g�Oѱc'
�5���ݮ�����R�xL���.     +,�[����e��͕$���9��}�{��2C?��&-^�Ĺ�����g����_W^y�N��Т�?�e.S���(""\��w�WZ���?��7^K��""#�i�Ozw�B������&N�#UxxC=9|���v�[M�6�ѣǵp��ڳ;E���������|�={Nǽ��?�������]��۶k���?z��1<��i�����z���j��I�Z�/O[n�]��2~�@�e������ �_jUj<���Ж��~��V�������O�Y�����2�2����'˖��z��4˰�� ������Iގ� j��}i��1��2)����B@ῲ0��\����u����י:w�F��?<p�����:z�A���|;z\�Q��PZ�a���\�>}Z����<���x�@�?���͑$�}�)��w������||�#���D:xX�Lefei�?�pZ���C��<d��{v��M��>��]͚5�����c.������c�%��<�T     �f�.�(˗s���{��C�}��<�'Nje�*�r�M.�V&�Rʞ�:u괒�V)$���|�TRVV�V}�Z��q��ϿTZZ���ҵz��|ˍ�:��u�6���t�����;��=:}��ڰa��5�va�>���J>�Ҏ�)�2=�     ~�4�[��Q��`}|�sY���9�}+1�    IDAT��I�ѣ�\����u��x�<��9��M��똩���oܸ���jӶ�4�L6��̏ѝ��(K^V|�z     P�2�P�h=S����7g��M*u}I��ɽ�}�����.Y撋Q�aNlh���999.������י
o��Ǹ�K{.�/�;��;FY�B!     �/ޟ/��~D͛7Snn�˗��4i���eAE�٪UK%%�����Z?�%f�������Q
�WDy��_�     ު���۬�t�����S���}j~�"����g�.>����8'�+�߻��_v�aH�z����k���S�23�ԪUK�ߗ��=���ȑ��������Uff�R�P�;�j��T5n�;��K�,yy~�����mXO}�WF���;�xVVV�s򭣞W��� ��Xk�5�g�?��2�Q^5��|m��g��'�<=���Q��5%y�:���Z��5�v���2|w��eڍ�� t�������۟O������쟫��Ůe�����������S�z!���*""\YY��41��~��[-+����zf|�""µn��J��g��ǔ��x���n���}w�Z�i���5t��uWO�:uJO���c��������+==]�>�Hό��<F��r�b� �     �2���͝ɩ:uʺ�v ��ㅚ��t��ew�S�Taa�Zs����Md�o�y�y����v�e|��-��d��G�xH�O��� ���7�2n������Y�n-	���Uj�7��,IZ��_�ƻw�'Iz��_zb�$�����8W�3 �/����Ok�b���:�ۯn���=)���G�7�?�z�$���ݩ�?�������ڮ���l]3U4�]��VW;�]`0"     �[���*<S}9�/�1LI���q    ���e�g�/����#���s��!S�d�     �B��&��&��QX(����m�V��j�_p�f�)�VG�KFP��    �LvI�����\�v��g�/E�22�N���l6�����'WF�    �Z�.I�͡��O����}�e�ٯu���p3�_�奭g���!7I��2l�K����Y��y�C<""�2���Q�|+�'{)��΅<���&�<��߳���Y�T��gU����O�%Y�߫��NQw w<���������J_����CM��`��:u��n���01��?�W����؟a�
�      >�'M >�}�̝/Y����g�e���`�e<(�zN�ͺ��6�pX8�o�$i����唭��3�g��OZ\�� �����ן��w�c��Q�r�T\�H�.c�)5��pD�����	 U�]�rrr���ǥ>��K��2�Ce�%��C�    ���.I���j#��p��Ϫk s���\�.]
�3l6E��Pz�dڂdP     ��]��5UvfF����v��r�$��aŰjp1Zx�f�醆vΨ'�"�8     �CvI���W^~��!�|��B�Ϟ!õEc���Cʿ 9r%3�Ҳ    �6Ir8r��J�W����ڶm-I
��ק���-*5����v���|ɑ/��@�	    �a
���dV�G�.S����ƛnP��)++[?��f}��O
�1]Zzjk�;�C;�w�С�~�yR��A U��}Zz�zV��>�}Æ���\4Q��� w�[����� �����O0��@�q��3����{���4�~��u�qY�}��;��x�������O�K�:@��W/D�=?N'35k��������fj�8�u�S����ظ�~��n���{zj���*3݁�b�4҅    �c�� ��q/���w�nݺz��o*''W���/��_.�S<��?�������])�������~]y�:q"C���H��2��ׁ5����Vx���m���ػմic=z\|�=�S4��1����������ٳ�4q������W���!�0���m��EK���S)ϑi�����<�Y�i�_,�=�ywƯed�W�7�<ҫ���wF����t��n+5��  0<����� P=�$�׫��ߍ��^_��Nrr��G����~P��H�G=�]��֨�O�ם����s56~�N���?�s�̬,-��"�=5N;w��?(S��M��$i֬�=�M��L����fu����י�<�E]ټ����}��<��    �K��b�����I�&:���6.�pT���+�V)e�^�:uZII�RWK>^��)++[���J-Z�8�I޾S�~٣ӧ��6�Y�h��7MS����>�\҉'�2i�n���J}�(     ��yi@e2����~�����$IG�sYR�y�q�F��?�M��j��2�l6��GGGi��5���s��稲_    @�Q�s�8~BM�4�<^�|J����u�( Iyyy�,+�����#ߡ��:S��5~�����7g��M�$��@!     �/֧���矷�{���n�W�1[�j���U:x�B뇺�LӔa3\���Q��͔����    @uW�#��{�n��7�4�}��?u��]֠�~ծ���n���������_����r�eff�U��ڿ/U={vs�9rT7�t���;�������ҊOWj���ڿ?U�I٧��+"<\?��ُ��E���#O��䩿�/�����;@M���>�5���ד.�}�I�<�\��Y�yz�<����}���z���������ߪ���+(��&�;uꔞ�E��~�噧t�����ڻo�����ے�X�7=,���x���n���}w�Z�i���5t��uWO�:uJO����?ի�?=��""���O�TY���9(     |ˈ��7w&��ԩ�@�Baa�Zs����Md�o�t�r��g�<���a��Nb,�W7j���Ft{O����#&�����g����꭪�x����g�V���z���z�����U���VuU��-�kFb�� �&�ꪒ�KF     |���L�U�)ɨ�y    ��ũ���L��(���s��!S�d�     �B��&��&��QX(�u��m�V��j�_p�f�)�VG�KFP��    �LvI������p8.F��ח�"AV��BŊ6�M��Meד��+#A    @-b�$�����'G\���2w�	0πd�������3��B�񐛤�P6�%� U]uﳜ�x�u\�q_)��6^����ק���}����{;���[�3��y��œKrߕ�S��~.k��WMW�����ﯚ���Uݟ�?}�.Iu�ԑ�n�i���}�A�:�}�����(��mPP�     �1�$3�*1�C�Pk�;�+��h\��2�@��   @�Ǵ�     �"     �E����v�w��w�n�֊�g�    ��KRچ��ᆯ�
���     5�     P�П@���}��=+QW�����>�U���O�w���t�m���a����v��O~w�s*�Ņ����R��Ik���j'��j6O���ߟ�:o�����SU|}     @-b����\9��)�4ݮl�_��è���!�0d��]��%�ZP��0��@�   �Z�.I999���sJ*����������}�/����Ð�f�tZfp����:~�    P[�%�TW�"bd:*�Q��s����C(ΐ,� �x=��d�l�>���\ɴɠ     �!�$5k��̌�2����.�,�_X1��b���6�M74��pF=�)���    �vI���W^~��!�|��B�Ϟ!Cug�E��0R�ɑ+����%    �v�I����,P�?o,|�m�m��'��Spp�f�>]-�nQ�}�m�Z��L�{��C�#_r�K��¹     P���� ̊�o�DC�R��-u���ܹKoϝ�a��/5o�Yo���/�]�w�8��x��?B�^���6oq.oM;��0F��e�׹�e�" �F��,��l����V����2�22�2���H_���ՍZƗ�}���Wo�$=���������%�ڪ�}�}��?>O�����v�Y���Dzz�$տ��Z��Z���+�ꂬ�,��@�u�ݻ.����v��G:��O�.������ݯ��Njl�D�$��c5Ul�F�0     |�&]<^ѯ�͵����}J�����7�\ά��4�K�'��s���	��y3�����4���5���կ��%I�zo�;��n�\wēC5n���ƍ�E�(<"�%���u�upYv���i�Ju���ey�N�y��2MS�-zGmڶr��[�:]��m�A� {b��]0G{u�Z���/�O�t?I#     �((x�������k��/���z���4&n������!����o�^/N��^��7���&u��[�8yRGҏ�M�V2e�d���1��Wݐ:2e�M�VJO?��'O�s��uULs]�0L�LEE7�a3���[R/D�/�)S��jv�ڴ�gg�%sh����'�n��Wm��s/�Yo�[��]����S�     �%��X�����ަI��Q�V-]�lKZ�����}��>�ի�VL�U�x��oժ/��С4:��ի��w��"�4�}��n{�L�T�vmt��a������W2MSmڶ��m;.��@�A�8qR��
���k�m[r�>��Pǎ��4M]ש��=�C��.^�o���2i���;w�Y�V}�C��t��!}������Ypl�      �s�����4a�:��3za�D����.��#G��/��������M�4ұ�ǜ��9���(IҶm;ԦM+Iү�I۶&k�]�ԩ�$�]��ڶ��	y6oڢN�_+�`�m[�%I۷�P�k�K�:]�6m���Y�޸q#��_�-�8�QY+    j��0MS量赙s�ي/ԯ��]Ϊ���^2J�e�b�e���䝊�j�z�Bt���y��ںu������ի����ڑ�K��l�������]�6�۶%�C����l�pͯ����n��{^n�L��y??/���V�     ����;���jp�ee^�H�QEE5q�oڴ����?{����MՍ7ݠ���<����,��p^�����O�>�;w��<v�$����u(��Μ9+I��>�S�N��οQNn�K���:q2CM�6v�/~    ����}`��B7hp�n�u'���V��v����v���e���M�ų꒴z���}�{����$I���O���mےգ��y��-[��G��i˖�n������?mS�n�Ֆ-�\�۶5Yw��C?m�"���]�\=�n��ugm�y��z����������?jc�Y\�m�d��5�<ҫ��ձ~}��X?�������5��I�����  ��������}Qή�����P��Ӭ�34��/)//W����b먔�..�����ݷ�5u곚:�Y�[���\��3�m[�ڶk��6��\�u�6�n�J۶n��m���jպ���Xo۶�jݦ�6n��6����ي������M���c�4a��m��u�k �     �o������T�:��\P(,,\kζ�Q����\n  UEu��3]:F[�Ïϱ��~uk���툀��$IzuވR����$���{J��-I��dB��ߞny�@ �@��-���/�~|�T����~��f$\ Ӥ[]URti���     �ohYW������    @a!@*8��@���ܞ�7�2$[�     ��l6�l69��Z@���o÷
�U������6�M��:�-X2��    �f�K҅�l5h��J�T���KA�������b� �ͦ���2��IA���     ��K�as�����#.�p_r����g@2�L�Wryi�FA!�x�MRp����u  ���Y{=����j�y�?����˳�/��9_� �@����]<���kLa!�N�:���2M��ü�?�W����؟a�
�      >f���`��W%Fph�S  ��z�����Ѯz�� ��`Zz     j
     �"     �E(     P�P     ��?  U��>Ȟ�W�>ʋ'-��Ѩ�e��pX����ʝSE�~��R� E*��|u��ߏ5��gD      �#  @����m����v�����e:ְk�R��-N��D  � F     P�P     ��     @-B!     �Z�B      �]  (��>��
��=Y�=�2��x�WqO"""��>##C��X��Z��)OO� �T��W%U��{ 0"     �Z�  �R<���2��'�,�:�X��h����� ���R�'-���q0  P]0"     �Z�B      ��      j
     �"     �E���x3%%%�y����}� �ݧ��>����������}�i_Vh;�� ���1�     @mbt   ��d���_>�a��?�z�e뷧{�  �
F     P�ԺB�5�\����J=�7ިw�yGK�.�+��R��    ��*[HLL�ܹse��^�p���W��"�ڵ�{ｧ��D���{j߾}��5j����k��OҌ3��%     �U�B�$�������tN�v��3�<#I�0a�v��Y��"##�u�V�9sF�L     KUz��?�PÆӷ�~��G����az�GԫW/I�g�}�E��4MIRpp�F���o�]ǏWRR�%�0`�bcce�֭[�����e�311QӦMӟ��g]q�ڿ��|�M�߿_/�����ĉ����!C�x�     �҅���t}��>|��N�Z�:}��խ�ުq��I�&O��'N8?����_;vT||�l6�&L��}׮]խ[7M�4IgϞ�3�<�A�i��������̙3u��1=��S>|�&L���S�*11QӧO׎;ʔ3 �f��}�Ϳ�--����_4뿷��Q�_?  �T�K����h�"�h�B��v[��t��M+V����u��A�X�Bw�q�3޵kW}��:x�RSS/�_ 66V			JMM���ǵl�2�~����u���ڳg��������V�Z�]�S�     �K�`�Ο?�w�}WO<�6o�|�:QQQJO�X�OOOW�f͜��6m�Ç�ċk֬�F��ѣG;�Ud�~ZZ����s��v]O9 ��aڗ�N �j�J��_�^�z���?����%f���p�/~[�rss]>������Ќ3�a��r���-�r    �_���Ž����ٳ�%g�>���h����h���ǏWTT�K����4���(''��˟<�    ��T�B�ѣG�d�4�eyRR�z���͛�y����{�j�*g��o�ѽ�ޫ+��RW\q�z�����ҥKէOu��E�5R۶mչsg�>O9    �/��Ҁ"K�.U���հaC�իW+22R������V~+W�t����몫��o���'Oj��8q�3�v�Z���j�С���Tff�J=~�v�۾��+z�W�s��r?O9    �/F||�����<P��ཱྀN  ���>���}  �&��z�   �� �r�3�W�9     ��(     P�P     ��     @-B!     �Z�B      ���}`�[z��u��
�ek�����Z��l��     ������+}��@�B���:  PÔ��t9��i�_� ��?޿�4     �Z�B      ��      j
     �"     �EjT! 11Q�\s�$�N�:Z�`�ڴi�     �:�W�Z���4p�@u��Yaaa���Ժu�`��J����Ӗ-[���Z��    �"�U! 44T3f�Љ'��/��ѣ���Q�&M.Y7''G�>���r����۷�RRR�v  ����g�K�h�����~=�Ο�y� ��<��C�*���O���ӴiӔ��#IJNNVrrr��'&&j���ڱc����)S���+&&FǎӼy��|P�5Ҿ}�4{�l8p@�ԭ[7���O���JOO�ܹs�s�NM�>]�7ֳ�>���<�={V#G��$0@���2C�֭����u��I��ٳe�������t    p�j5G@�Ν���;� 1l�0���[O)x  �IDAT<x����5a����GӧO�c�=�S�NiĈ��322��[o�GѶm�4|�pIҸq�$IӧOא!C�E��]��[�n�4i����բE4ȹ?�4e�f��    �ժ�C�y���˗k׮]:uꔖ-[���}��JMMUVV�V�X�֭[;�ߺu�v�ءӧOkݺu�ꪫ,�����������Z�l�n��vg<..N���^=     *�Z] ���iii���Ν�$>|�eYHH��~�&M4t�P�o�^aaa�٬k'͚5��ѣ5z�h��    ��T�B��c�m=э'����,s8n�3f����5y�dEDDh�ԩ��7C3f�І��     �V�lܸQw�u���ʫ_�m�V˖-����U�~}��i���HKKSLL�rrr\�     �
�U!`ɒ%��l�>}�ڴi���P5m�Tݻw��1O�<�v��)22R�{�v�>|X��z�BCC!IZ�t����.]��Q�Fj۶�:w���f֬Yz�����/     V�ե���z��5h� =��s
���畒��5k���.ԨQ�ԫW/͙3G�ڵs��̙�Q�F�O�>��������v�Z���j�С���Tff�����< @���t���]>�i���ӽ�? ������v��/��#>>�LII	t(fup�@�   �<�P��P6��Pُ�kFb��4      x�B      ��      j
     �"     �E(     P�����%&&j���ڱcG�S x���:�n�ן��'/^'Iz2����<�'���  TW��>������?�V�B@XX��Ν;+,,L���Z�n�,X��c'&&:o�������Z�n�������3�O��zX�2�    ��	x! 44T3f�Љ'��/��ѣ���Q�&M*-�)S�h۶mjذ�Z�l����o�ĉu�JˣH�M�����9Q��    �l/���O���ӴiӜg�������,I2C�<�z��%I��ϴh�"��Y�xY���+''GǎӱcǴe�͙3G}�����\o������aZ�n��ϟ�,t��AÆS���u��i}�����ʴmbb��z�)�;V���J>|N�]����TN�C�gr��U�)    �)���Ν;���?w;�o߾���[5n�8I��ɓu��	%%%�)^�ϟ�_|��]�:]�vU�n�4i�$�={V�<��|a�ر���ϵb�
EGG�^�z��y�V�ƌ��>�H���z��ot.�1��j��y�    ���5 **J�r�֭�V�X������Z�b���2�+������rޏ��UBB�RSSu��q-[�L��~�3^�n]����̙3JIIѶm�ʼ�$}��7Z�~���Ҽ�     w>"@��0���(��_��6==]͚5+s��l6���~�f�4z�h�=�Լ�͛���8�x���㏵u��2o+I{���:g     <	x!�رc��vߎ�4M��_�vY�ղeK���ahƌڰaC�����ڶm�~���kʔ)�׿��?��L�J
h�    @��B�ƍu�]w)!!Ayyy��>�R(���v�)^�_~���n%$$8����)&&F�}����233�p�B���j����B@Y�-�4%��� P]��Ony�祐/P�%/^����{�� TU����*
�K�,��f����զM����iӦ�޽�$)))I�{�V���ռys�{�Z�j�s{O�

R�:uԨQ#u��]3g�ԁ����\g�ҥ�ӧ��t�F��m۶�ܹ�$�~���޽�"""ԠA�j�Jǎ+Ӷg�[b���r=     �	�����l=���4h��{�9�������JIIњ5k�z�jEFF��W_�T�jo�ʕ��=��bʔ)��s���СCJLLԊ+\F(�]�V���:t�"##����2b��;��ȑ#%I)))z���ʼmi�|k���]#z_����u����1  �d@�  �"���x3%%%�y����}� D���qi �2O?]:��s���4��/ �����y�����kFb�/      ��B      ��      j
     �"�  �9��̦�OvTe���=�|1 �@	����'+���!2"     �Z�B      ���Ҁf��P���2���4�)�뭻�b��@�    �1g! m�W�p�W���V�t
    ��K     �E(     P�P     ��{^ ���������O�Y�/�
���-I�Լ獥���$Iz2aG��@�1�x�����~{�_� �>     @-��B@�:u�`��iӦL�'&&�k��u     �.����D]����t���+11�Ғ*���SLLL��������/kɒ%�裏��/�Y�f�x�޽�����U�㖤�ݻ+11QW_}�W�    ����s�����G�ɾ�v��������rmשS'�_�^��?����|=����_���c�J���´i�&���;�mN�<y�~�֭�����ܹs�=     ��
���X��u��i����pႤ���Ǐ׎�1]y�z��'u�W(""B�����Q�FI�Z�j�#F�+�������oj����>}�7n�g�}Vyyy:{��F��ٳg�4M��ŕ�ۻ��r͚5=z��~XX��9��t�Is���͛7�w��{�     �b*4G@׮]խ[7M�4I���jѢ��v���zJ[�n������*99Y���ӧ%I}����ٳ�裏*33SÇ�$�7N�4}�t2D#G��$��)�4=�Y�n]�o�^=�������/��reeeYn���[K�,Qpp��c    P\2"��_��Qll����*IZ�l�{�1-X����[�n�ŋK�v�ܩ~���ė-[�={�H����4a���	P\ќ�i*))I|��3V�^=���OЩS���?h�.� <X+V�ЩS�d���    P\R�2e��m����k�Ք)S���5k�ѣG���:C��a�z�ڻw�n��V����ċ�?w�BBB��@Jz��U�^=�n�Z�?�����5{�lI�믿��.�LgϞULL�F���#Gj�̙��6mڨS�N�;w��y  ʮS��M[�ި(IR�뚔?��z{O}�风���O @Y]R���WNN�%ˊ3C3f�І�t�ٳg��_�=�ܣ��T���.�������љ3gt���8qBu��ѨQ����ӧO;/Kغu�-Z�1c�8Æӗ_~���p��5j����R'    ����d�iii����w�}W�����#�ݮ�Ç�ȑ#�:�i���*4��SPP����v��e΀��۫}��z����&O���۷k�ĉ^�    @ U��t�R�5J{����ݻ���H}���n�ٵk�s6���,͛7�L������(##C�f͒i�3fL��4H���233ռys8��X���׏?����,5o�\=�����kg<66�e�������޽{=�    @UV�B�ڵk��C�*22R���JHHp���#t��1=��㒤nݺ��G-S!`Μ95j������l<���}QQQ�6m��ׯ�'N��o���쌷i�F���SHH��=�իW[�    @Ma��Ǜ)))~=Ȓ%K4i�$�޽[�Ԯ];M�:U>��_�[]��� �T�&��K�h�x�Η���Wo~%I���J������	;J�oO��?�� P�x��Mu�5#Q�]|_F'N�P�v�$Iu��U�>}���?Wơ    @1�4��f͚�#F��������?��y��Uơ    @1�Rصk����+�P �jl�Ŗ�(�xQg�#��    �R�ri      �*eD   e���,�G�YƋF4�yc��7U,1  ��     �"     �E��$&&�])66�R����O[�lQjjj@�hӦ��:(??_[�lѼy󔙙Y��O��^�����)I�j���H    P�8����$5n�Xo���F���G�,1_����۷�RRR����>�ݻW���SPP��|�I=��S�6mZ��G����͇����;�>y���    � �B@NN�$)77W�����\Vd������aZ�n��ϟ�.H*Q0e�=��Ê��ѱc�4o�<�����T�F��o�>͞=[pn3}�t<X�7����7�xÙCY���SOi�ر���ԠA�ԭ[7���O���JOO�ܹs�s�NM�>]�7ֳ�>���<�={V#G�Tbb�Ə�;vH������os��(���={�L�T\\\�O�̙3]�������O?��E�Ѿ�����S�_I     ʠ�]�v��nݺiҤI:{���y�4H,p�3l�0����JOOא!C4a�8p@ӧOWvv�F��#Fh�ĉ�m|�A���K���^<��/^\�c�3F}��s�FF��z�-<xP�����q��9E�˪�1<�e��L�,��5j�'N��7��_e�+g ������~<uX�=�'�A�������?���L  U�����~�����K˯̓���*!!A���:~���-[��o��e��˗k׮]:uꔖ-[���}��JMMUVV�V�X�֭[�l�駟�СC:t�V�X�ϲ�o����땖�&Iںu�v�ءӧOkݺu�ꪫ���*yOy���)>>�L�		Q߾}�|�r��4����_�SKѾ����]Ԡ^�w
    P+�yD@�f�4z�h�=ڹ��Y�ʒt��9I��Ç]�����lS|���tEGG��{��u�ߤI:T�۷WXX�l6�#�<FY�*�ͦ��~Z�������ݮ7t�7
���N���5�j��i���Y_��� P�=�P�[��H   �r�Ќ3�a�����������ⷋ�.�1K�c0f����k��Ɋ���ԩS-�_R�:u<�,yyb����T�~}���������q�`��o��i�G���S]+|l    @�U���iii���QNN�˗���������
��_<[S�c�m�V˖-����U�~}��i���8���ի��Wz�����0=�䓊���ԩS��<�t<�\��    @*G!`�ҥ�ӧ��t�F��m۶�ܹ��	�����+�T���u��ꫯ���'O�T�v��޽{��>�[o�U�������$�۷Ow�}�.��r�i�F}��񘳧�f͚��_����?�����Z���;
Wtt����*I���}����;�����p5
�o;D���?�	|D    @�S�K֮]���P:T������TBB��	�Y�F�?��"##��7�hٲe^s�5j�z��9s�]�v�؜9s4j�(���G���<x��~�m����������4�|=�����W��JSTl�5k���7�|S_|�
6����Z7�_�^�А`�?zZ�٣זn�<     �1���͔���]NLL������ί�[�7�) @��m�ӥc������i/W��> �խ}`׌Ĳ�  �[�ڏ@�> ���A���{����Ɣc�      P�tD@lll     @�È      j
     �"     �E|R�S��,X�6mڔy�o�Q��.]�W^y�r���D]s�5n�    ��q�,011Q������'Oj�ƍ���������5j����-_�\u�����KӵkW�;Vcƌ�޽{+�     T%�t�2e�v�ء�͛k���1b�^}�U˝�����G-ׁ###�u�V�9sFgΜ)_�p�wh��r8~? �T�����G���#�@�����_ ������%�����ܹsڽ{�>���p��X�n���o�O>ћo�����;c����o~�7�|S��׿4s�L�h�B���/�0M�8Q.��oOfϞ�7�x�r�_�����    P[Y�`�����322��[o�GѶm�4|�p˝?��c�={�}�Qeff:ן:u�$i���2dH��]�i�2M�r�W_}U���


*�~    �i.�4 ((H����UW]����k�ʕ��֭[��׭[�{��r�˗/מ={$IIII�0a��u˻�����ʼ.     �Y�s�7o�sAIjҤ������+,,L6�uӁ��4��s��)$$�����7     (�K>mO�<Y���ڳg��v�:��1c�ɓ';��[���-s"��7     (?��ݗ,Y�������o۶��-[�����~��>Mğ�     �~��egg���s.;y�ڵk���H���ۧ�x��Y�f���_�i>    ��ۻא��<��3Z��tc}2خ��̊��AFPv32-��X+���������Q!vcCK���(����i�-�]aŴ�,0�d2�}�g�߬㌷�Q߯g�����ό㙙ߜ���Ѡ1��n��ƍ���ԭ[�d��TVV����^�Z�ϟWLL̸Km������&����W���/�����7O&�����Ϸ���z;~P?-��  �8����L�� |���'���׈C�      &:     �B�     `
�#     �)��      �:     �B��     0q�u���q�qJ�ڣ�?��D�/I3f�PQQ�u��u���������{�����m���j�듒�$I���ںu��͛���~={�L%%%�����֯_���,�uG��ӧO�����T/^�ݻw�/_���,�޽[6��mvO��Ў;�n�:���r�s    ��󗤾�>�<yR�N�RKK����%I111ھ}�:�@�233���X޸q����TRR"???egg+77WǏwY/$$DO�<Qqq�c݇mg��TYY�͛7���Av�]�������J�� �ɖ����+W�������ӱc����=z��cm     |��ր��v�������Z�����:���2uttH�Ξ=+��.���Xg��\�L&������ˎu���N�WVV���`�p!!!z��SݡTUU)99Y�/��Ǐ�h�"������jX�=e[�b�������&I���ժU��     L(N��������:x���߯�����:��v���vO���e2�����!�	SWWא�������Ӱ����ݼySiii����tUTT���w��]e�˗/�mmm���v=     |���ϝ;�.���Х�C���JJJ�jjj�����l6+%%EC�Pjj��l٢ϟ?���Ieee�/�����Z)))JOOWxx��;6�쮲͜9���ͦ���a�    ��>p���
��lVTTԨ����jΜ9NW8�dRAA�:::TWW7d���"���i�Ν*,,��gϞ!����UEE�222T^^��_��8�p������    ��r��>}���ۧ+W��ڵk�Z�2��#.�i�&ݻwO===��Ð�jUPP�N�:��r���uvv���[��ͺz���.]�����ߗ$555�8��l���
v,���{��     ���n���PWW�jjjd��-[�]�v��.h�X�d����j3C��ٲX,:z���}�6������8 #����kEEE9�<����۷oGu,  \�4����m;|����X�� _�4�2�����W����H��+�9��?z�~p�����" ..N			:s��v�t��Y�Y�F,�$�>}ZEEEn&''���Y�^�Ԗ�����竸�X�f͒�b��bQ``���iii���Phh����m�6566��z��)۝;w�v�ZEFFj�ܹZ�fͨ�     �-��o��Y�V]�t�i����v���+//O9992�m���`%$$��ɓ.�7l� �/�?:w�n߾=�~tt�RSSe6����{��׻\�O�=e{���"""t��	����:544�*     �b����[[[��?�����  /���b�|�� ^ ������[<�tk�'���kċ��     �ɋ�      �:     �B�     `
1������ʧ�=�C��1ը��UPP�d&M�f����~�>�d��s&���0�o߿�n��d��4>}D��<.u��!���?�~��>��	_<NIFg���m��߿?|q�����i  ��aUd�����6����FlZ    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Screenshots/screen1.png"
dest_files=[ "res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSC             e      ���ӄ�   ������������ٶ��   �   ﶶ�   ��ƶ   �������������������¶���   �����������Ķ���   ����������������   �������������ζ�   ����Ӷ��   ������������ڶ��   �����������Ŷ���   ������������ζ��   ������������޶��   ����޶��   �������������¶�   �����¶�   ��������Ӷ��   ���Ӷ���                                           (      )   	   /   
   9      :      @      F      G      M      S      T      Z      c      3YY0�  P�  R�  QV�  .W�  T�  P�  R�  QYY0�  PQV�  .W�  �  �  T�	  YY0�
  PQV�  .W�  �  �  T�	  YY0�  PQV�  .W�  T�  YY0�  PQV�  .W�  T�  �  Y0�  PQV�  W�  �  T�  PQY`         GDSC   \   -   �   =     ���ӄ�   ������������Ҷ��   ����������ض   �����ض�   ���׶���   �������Ӷ���   ���Ӷ���   ��������¶��   ����Ŷ��   �����鄶   �����酶   �����邶   ���������������϶���   ���������Ӷ�   ��Ѷ   ��������������������Ķ��   ����   ���������Ŷ�   ��������ڶ��   ����޶��   �����¶�   �����϶�   ����������Ķ   ������Ķ   ������������ڶ��   ������������ٶ��   �����   ����ﶶ�   ����   �������ٶ���   �����������Ķ���   ���Ҷ���   ���Ҷ���   ������������Ŷ��   ߶��   ����Ӷ��   ܶ��   ��������ض��   ����������Ӷ   �������Ӷ���   �������Ӷ���   ��������Ҷ��   ���¶���   ������¶   �����Ҷ�   ���������Ŷ�   �������������Ŷ�   ��������������Ŷ   ���������¶�   �������������������¶���   �����Ӷ�   ���������϶�   ������������¶��   ��������Ѷ��   �����Ҷ�   ���������¶�   ����������ڶ   ����������Ӷ   ׶��   Զ��   ������������¶��    ����������������������������Ŷ��   ������Ӷ   ������Ӷ   ����������������ڶ��   ��������Ӷ��   ��������Ӷ��   �������������������Ӷ���   ��������Ŷ��   ������ض   ������������ض��   ���������������ڶ���   ��������������������ڶ��   ���������������Ŷ���   ����������Ŷ   ���Ӷ���   ���������������ڶ���   ����������Ӷ   �����������϶���   �����������Ӷ���   ��������������������������Ҷ   �������Ӷ���   �������������������Ӷ���   ��������Ӷ��    ����������������������������Ҷ��   ������������������������Ҷ��    ����������������������������Ҷ��$   �������������������������������Ҷ���$   ��������������������������������Ҷ��   ����������������������Ҷ   ���Ӷ���    ���������������������������Ҷ���                	      t      L                                        node_action       _on_node_action             set_conflictzone      none                ?      smooth_elevation_differences            set_wind_rainfall               set_wind_temperature   	   set_winds         erosion       water_erosion         set_sea_rainfall      set_mountain_rainfall         set_basic_temperature         find_neighbours       change_color_mode         set_ground_level      set_climate             sea       map_generated      	   elevation         small      @      0         medium        large      �      p      	   show_wind                                                       	   $   
   *      0      6      <      =      B      K      P      Q      V      [      `      e      f      l      r      s      z      ~      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0     1     2     3     4   &  5   2  6   5  7   8  8   9  9   D  :   J  ;   U  <   [  =   f  >   r  ?   {  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   	  Q     R     S   #  T   (  U   1  V   8  W   =  X   A  Y   E  Z   K  [   S  \   W  ]   ]  ^   c  _   l  `   m  a   t  b   x  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t     u     v     w     x   "  y   -  z   6  {   ?  |   L  }   M  ~   S     ^  �   g  �   p  �   }  �   ~  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �   %  �   )  �   2  �   6  �   7  �   @  �   D  �   H  �   L  �   M  �   S  �   W  �   [  �   _  �   c  �   g  �   k  �   o  �   p  �   v  �   z  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   
  �     �     �     �     �     �      �   #  �   '  �   +  �   ,  �   2  �   ;  �   3YYB�  YB�  P�  R�  QYY8P�  Q;�  Y8P�  Q;�  YY;�  LMY;�	  LMY;�
  LMY;�  LMY;�  LMYY;�  Y;�  �  T�  PQY;�  �  YY;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�  PQV�  �  T�%  PQYY0�  P�  QV�  /�  V�  �  V.�  �  �  V.�	  �  �  V.�
  �  �  V.�  YY0�  PQV�  .�  �  Y0�  P�  R�  QV�  &�  V�  ;�  �  &�  	�  �  �  	�  �  �  V�  �  �  P�  Q�  '�  �  �  �  	�  �  �  V�  �  �  �  �  �  �  �  P�  Q�  '�  	�  �  �  �  �  �  V�  �  �  P�  �  Q�  �  �  P�  Q�  (V�  �  �  �  �  �  �  �  �  �  �  �  �  P�  Q�  ;�  �  L�  M�  .�  L�  �  MT�  PQ�  (V�  .�	  �  Y0�  P�  R�   R�  QV�  ;�!  LM�  )�"  �K  P�  �  QV�  ;�#  LM�  )�$  �K  P�  �  QV�  ;�%  �  T�&  P�	  R�  Q�  ;�'  �  T�(  PQ�  �)  P�'  Q�  �'  T�*  P�"  �  R�$  �   R�  R�  R�%  Q�  �+  P�
  R�'  R�  Q�  �#  T�,  P�'  Q�  �!  T�,  P�#  Q�  .�!  �  Y0�-  PQV�  �  �  P�	  R�	  R�  Q�  �	  �  PP�  �  QR�	  R�  Q�  �
  �  P�	  RP�  �  QR�  Q�  �  �  PP�  �  QRP�  �  QR�  Q�  �.  PQ�  �/  PQ�  Y0�/  PQV�  �  �0  PQT�1  PQ�  )�"  �K  P�  QV�  ;�2  �3  P�"  Q�  ;�4  �  T�(  PQ�  �)  P�4  Q�  �4  T�*  P�"  R�2  Q�  �  T�,  P�4  Q�  ;�5  �  �  *�5  V�  �5  �  �  )�  �  V�  &�  T�6  PQV�  �5  �  �  )�  �  V�  �  T�7  PQ�  �8  P�
  R�  R�  Q�  Y0�3  P�"  QV�  *�  V�  ;�  �  T�9  P�  R�  Q�  ;�:  �  T�9  P�	  R�  �  �  Q�  ;�;  �  T�9  P�	  R�  �  �  Q�  ;�  �  /�  V�  �  V�  �  L�:  M�  �  V�  �	  L�:  M�  �  V�  �
  L�:  M�  �  V�  �  L�:  M�  ;�  �  L�;  M�  &�  T�  �  V�  �  T�<  P�"  Q�  .�  �  YY0�=  PQV�  )�"  �K  P�	  R�  QV�  ;�>  �  �"  �  �  ;�?  �  �"  �  �  �8  P�
  R�  RL�>  R�?  MQYY0�@  PQV�  )�"  �K  P�	  R�  QV�  ;�A  �  �"  �  �  ;�B  �  �"  �  �  �8  P�
  R�  RL�A  R�B  MQ�  Y0�C  PQV�  )�"  �K  P�	  R�  QV�  ;�A  �  �"  �  �  ;�B  �  �"  �  �  �8  P�
  R�  RL�A  R�B  MQ�  Y0�D  PQV�  �8  P�
  R�  R�  QYY0�E  PQV�  �8  P�
  R�  R�  QYY0�F  PQV�  �8  P�
  R�  R�  QYY0�G  PQV�  �8  P�
  R�  R�  QYY0�H  PQV�  �8  P�
  R�  R�  QYY0�I  PQV�  �8  P�
  R�  R�  QYY0�.  PQV�  �8  P�
  R�  R�  QYY0�J  P�K  QV�  �8  P�
  R�  R�K  QYY0�L  PQV�  �8  P�
  R�  R�  QYY0�M  PQV�  �8  P�
  R�   R�  QYY0�N  PQV�  �=  PQ�  )�"  �K  P�  QV�  �E  PQ�  �  )�"  �K  P�!  QV�  �F  PQ�  �E  PQ�  �L  PQYY0�O  PQV�  �G  PQ�  �H  PQ�  �D  PQ�  �@  PQ�  �I  PQ�  �C  PQ�  �M  PQYY0�P  PQV�  &�  V�  �Q  PQT�R  PQ�  (V�  �-  PQ�  �N  PQ�  �O  PQ�  �J  P�"  Q�  �0  PQT�S  PQ�  �  �  �  �8  P�#  QYY0�T  P�K  QV�  �J  P�K  Q�  Y0�U  PQV�  �E  PQ�  �J  P�$  Q�  Y0�V  PQV�  �=  PQ�  �J  P�$  Q�  Y0�W  PQV�  �F  PQ�  �J  P�"  Q�  Y0�X  PQV�  �  �0  PQT�  PQ�  �L  PQ�  �J  P�"  QYY0�Y  P�Z  QV�  /�Z  V�  �%  V�  �  �&  �  �  �'  �  �(  V�  �  �  �  �  �  �  �)  V�  �  �*  �  �  �+  YY0�[  PQV�  �8  P�
  R�,  R�  QY`             GDSC            �      ������������Ķ��   �������������������ٶ���   ���ٶ���   �   ﶶ�   �����������¶���   ���¶���   �����¶�   ���������¶�   ������������Ķ��   ��������������Ӷ   �����������������Ķ�   �����������ڶ���   ��������������Ķ   �����ﶶ   �������Ķ���   �������Ķ���   ��������������������Ҷ��   ��������      climate       ground_level   ,              temperature   �������?      rainfall                               %      6      J      ^   	   j   
   v      w      x      ~      �      3YY0�  P�  R�  R�  QV�  W�  T�  �>  P�  LMQ�  ;�  �  L�  M�  �  W�  �	  T�  �>  P�  P�  R�  QQ�  W�
  �  T�  �>  P�  P�  L�  MR�  QQ�  W�  �  T�  �>  P�  P�  L�  MR�  QQ�  W�  �  T�  �>  P�  Q�  W�  �  T�  �>  P�  QYYY0�  PQV�  �  PQY`               GDSC   %      ;   Y     ���Ӷ���   ��������Ķ��   ����Ŷ��   ���������������Ŷ���   ��Ѷ   ��������������������Ķ��   ����   �������������ض�   ��������������ض   �����϶�   ���¶���   �����Ҷ�   ���������Ӷ�   �����Ҷ�   ����������Ӷ   �����Ҷ�   ��������Ŷ��   ���Ӷ���   ���������Ӷ�   ���������Ŷ�   �������������Ŷ�   ��������¶��   ���ƶ���   ������������¶��   ��������������ض   �����Ӷ�   ���Ҷ���   ���Ӷ���   ���������¶�   �������������¶�   ��������޶��   ���������¶�   ����޶��   �   ��������   ����������Ӷ   ��������ض��                                               A   	        �@                                                       #   	   &   
   '      -      3      4      =      A      B      I      P      Q      \      ]      c      i      o      t      }      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1   	  2     3     4   )  5   2  6   =  7   @  8   K  9   Q  :   W  ;   3YY;�  Y;�  LMY;�  LMY;�  �  T�  PQYY;�  Y;�  YY0�	  PQV�  �  T�%  PQYY0�
  P�  R�  QV�  �  �  �  �  �  T�  P�  Q�  �  T�  P�  Q�  �  �  �  T�  P�  R�  QYY0�  PQV�  ;�  LM�  )�  �  V�  ;�  �  �  ;�  �  T�  PQ�  )�  �  V�  &�  T�  �  V�  �  �  �  ;�  �  T�  PR�  Q�  &�  �  V�  �  T�  P�  Q�  �  �  T�  �  �  �  T�  P�  Q�  &�  V�  �  T�  P�  T�  P�  QQ�  )�  �  V�  �  T�  P�  Q�  �  T�  P�  Q�  &�  T�  PQV�  .�  �  (V�  .�  YY0�  PQV�  ;�  �  �  ;�  �  PQT�   �  )�  �  V�  &�  T�!  �  T�!  �  �  V�  �  �  �  ;�"  �  T�  P�  R�  Q�  &�"  �  �  V�  �  �  T�  P�  R�  Q�  (V�  �  �  T�#  P�	  R�
  Q�  )�  �  V�  �  T�$  �  Y`   GDSC            �      �����Ӷ�   ��������ٶ��   ��������ض��   ������������Ҷ��   ��������޶��   ���������¶�   �������Ŷ���   ����׶��   ���Ӷ���   �������ض���   ζ��   �����������¶���   �����������������ض�   ϶��   �   ﶶ�   ��������   ���ٶ���   ���������¶�   ������������ٶ��   ����������ڶ   ��������������������Ҷ��   ������������޶��   �������������¶�                      d      `      	   node_info                            	      
                           	      
   "      &      (      E      d      q      ~      �      �      �      �      �      �      �      �      �      �      �      3YYB�  P�  QYY;�  Y;�  Y;�  YY0�  P�  QV�  &�  V�  �  PQ�  .�  �	  T�
  �  PQT�  PQT�
  �  P�  PQT�  PQT�
  R�  Q�  �	  T�  �  PQT�  PQT�  �  P�  PQT�  PQT�  R�  Q�  �  ;�  P�	  T�
  �  Q�  �  ;�  P�	  T�  �  Q�  �  &�	  T�
  �  �	  T�
  	�  �	  T�  	�  V�  �  PQ�  ;�  �  PQT�  P�  R�  Q�  �  P�  R�  R�  R�  Q�  (V�  �  PQ�  Y0�  PQV�  �  �  �  �  �  P�  PQT�  PQ�  Q�  �  �  PQT�  PQ�  Y`   GDSC                   �����Ӷ�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`         GDSC                  �����ض�   ��������������������Ҷ��   ���¶���      Clear                      	            3YY0�  PQV�  �  Y`    GDSC   _   S   a  2     �����Ӷ�   ��������¶��   ��������������ض   �����������Ӷ���   �������ڶ���   �������������ض�   ����������Ӷ   ��������ض��   �����������ڶ���   ��������ڶ��   ������Ӷ   �   ﶶ�   ������Ķ   ���������Ŷ�   ��������������������Ŷ��   �������������Ŷ�   �������ٶ���   ���¶���   ���¶���   ����Ŷ��   ����Ŷ��   ���������Ӷ�   ������Ķ   ������������ض��   �������ض���   �������Ҷ���   ���������¶�   ���������¶�   �����¶�   ����������������   ������������   ������������ض��   ���������������ڶ���   ������������ڶ��   ���������������ڶ���   ���Ӷ���   ��������������������ڶ��   ����������������Ŷ��   ������������ض��   ��������Ӷ��   ��������Ӷ��   ��������Ӷ��   ���Ҷ���   �������������������Ӷ���   ������ض   ����������������ض��   ���Ӷ���   ������������ض��    ���������������������������Ŷ���   ��������������������ض��   ��������������������ζ��   ���������������Ӷ���   ����������������Ӷ��   ��������������������Ӷ��   �����������¶���   ����Ӷ��$   �������������������������������¶���   ���������Ӷ�   �������������Ķ�   ����������Ķ   �����Ҷ�   ��Ŷ   ����������Ӷ   ��������������Ŷ   ����Ŷ��   ����������Ķ   ���������   ����޶��   �������ﶶ��   ����   �����������Ķ���   ������������Ķ��   ������������Ķ��   ������������   ��������������Ķ   ���������������Ķ���   �����������������Ķ�   ������������������Ķ   ������������¶��   ������������¶��   ���������Ӷ�   ���Ӷ���   ����������Ӷ   ����̶��   ����Ӷ��   �������Ķ���   ����׶��   ������ζ   ����������������   ����������������Ӷ��   ��������������ض   �����ض�   ���׶���   ������Ӷ                                  ground_level      rainfall      wind_direction        temperature       climate                              �?      ?              �������?                  @           @@     �@           �@   	        �@      Polar Desert      Ice Cap       Tundra     
   Wet Tundra        Polar Wetlands        Cool Desert       Steppe        Boreal Forest         Temperate Woodlands       Temperate Forest      Temperate Wet Forest      Temperate Wetlands        Extreme Desert        Desert        Subtropical Scrub         Subtropical Woodlands         Mediterranean         Subtropical Dry Forest        Subtropical Forest        Subtropical Wet Forest        Subtropical Wetlands      Tropical Scrub        Tropical Woodlands        Tropical Dry Forest       Tropical Wet Forest       Tropical Wetlands      	   continent         continentconflict      	   elevation         sea   �������?  333333�?      A     �?      A  ������@     @A     `A      B   d         find_neighbours       change_color_mode         set_basic_temperature         set_climate       set_conflictzone      set_ground_level      set_mountain_rainfall         set_sea_rainfall      set_wind_rainfall         set_wind_temperature   	   set_winds         water_erosion         erosion       smooth_elevation_differences   	   show_wind                                                       	       
   %      *      /      4      5      8      ;      >      D      J      K      Q      T      U      [      `      e      j      o      t      x      z       }   !   ~   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >   &  ?   *  @   +  A   1  B   6  C   <  D   F  E   J  F   K  G   T  H   ^  I   k  J   s  K   t  L   }  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^     _     `     a     b     c   &  d   5  e   6  f   <  g   B  h   J  i   N  j   S  k   T  l   Z  m   c  n   j  o   �  p   �  q   �  r   �  s   �  t   �  u     v     w   *  x   .  y   R  z   V  {   f  |   j  }   n  ~   o     u  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   &  �   /  �   8  �   >  �   D  �   M  �   V  �   _  �   h  �   q  �   z  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   %  �   .  �   7  �   @  �   I  �   R  �   [  �   d  �   j  �   p  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   !  �   1  �   2  �   :  �   D  �   N  �   U  �   a  �   o  �   x  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   '  �   /  �   9  �   @  �   A  �   Q  �   Y  �   e  �   l  �   x  �   �  �   �  �   �  �   �  �   �  �   �  �   �     �    �    �    �    �    �              	  %  
  1    8    P    \    d    o    v    w    �    �    �    �    �    �    �    �    �    �    		    	    	    &	     F	  !  R	  "  Z	  #  d	  $  k	  %  l	  &  s	  '  w	  (  |	  )  }	  *  �	  +  �	  ,  �	  -  �	  .  �	  /  �	  0  �	  1  �	  2  �	  3  �	  4  �	  5  �	  6  �	  7  �	  8  �	  9  �	  :  �	  ;  �	  <   
  =  
  >  
  ?  
  @  
  A  '
  B  0
  C  9
  D  B
  E  H
  F  K
  G  T
  H  ^
  I  h
  J  s
  K  z
  L  �
  M  �
  N  �
  O  �
  P  �
  Q  �
  R  �
  S  �
  T  �
  U  �
  V  �
  W  �
  X  �
  Y  �
  Z  �
  [    \    ]    ^    _  #  `  0  a  3YY;�  Y;�  Y;�  �  YY;�  �  Y;�  Y;�  Y;�  �  Y;�  �  Y;�	  �  Y;�
  �  YY;�  Y;�  Y;�  Y;�  LMY;�  LMYY0�  PQV�  .�  YY0�  PQV�  ;�  N�  �  V�  R�  �  V�  R�  �  V�  R�  �  V�  R�  �  V�
  �  O�  .�  YY0�  P�  R�  R�  R�  R�  QV�  �  �  P�  �  R�  �  Q�  �  �  �  �  �  �  �  �  �  �  �  YY0�  PQV�  ;�  �  PQT�  �  &�  	�  �	  V�  �  �
  �  '�  	�  �
  V�  �  �  �  '�  	�  �  �	  V�  �  �  �  (V�  �  �	  �  �  PQYY0�  PQV�  W�  T�   P�  QYY0�!  PQV�  �	  �  PQT�"  PQ�  �  �  �	  YY0�#  PQV�  )�$  �  V�  &�$  T�  	V�  �  �  YY0�%  PQV�  ;�&  �  )�$  �  V�  &�$  T�  �  �  V�  �  �  YY0�'  P�(  R�)  QV�  &�  �(  �  	�)  V�  ;�*  �  L�  T�+  P�  QM�  �*  T�  �  �
  YY0�,  P�(  R�)  QV�  &�  �(  �  	�)  V�  ;�*  �  L�  T�+  P�  QM�  �*  T�  P�  �*  T�  Q�
  �  Y0�-  PQV�  ;�.  �  )�$  �  V�  �.  �$  T�  �  �.  �.  �  T�/  PQ�  �  P�  �  �.  Q�  YY0�0  PQV�  &�  
�  V�  ;�.  �  )�$  �  V�  �.  �$  T�  �  �.  �.  �  T�/  PQ�  �  P�  �  �.  Q�  �  Y0�1  P�2  R�3  QV�  &�  �2  �  
�3  V�  )�$  �  V�  &�$  T�  	�  V�  �$  T�  �3  P�  �  R�$  T�  QYY0�4  PQV�  )�$  �  V�  &�$  T�  �  V�  �  �  �  �5  P�$  Q�  Y0�6  PQV�  ;�7  �  PQT�  �  ;�8  �7  �  �  &P�  �8  �  
�8  �
  QP�  �7  P�8  �
  Q�  
�7  �8  QV�  �  �  �  'P�  �8  �
  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �
  QV�  �  �  �  'P�  �8  �  �  
�8  �	  QP�  �7  P�8  �	  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �	  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �	  QV�  �  �  �  'P�  �8  �  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �  �  
�8  �  QV�  �  �  �  �9  PQYY0�9  PQV�  &�  �
  V�  �  �  �
  YY0�5  P�:  QV�  ;�;  LP�  �  Q�  �  M�  ;�<  L�  R�  �  �  M�  &�  �  V�<  T�=  P�  Q�  (V�<  T�=  P�  �  Q�  &�;  T�>  P�  T�+  P�:  QQV�  �  �  �  �:  T�  �  �  &�<  T�>  P�  T�+  P�:  QQV�  �  �  �  �:  T�  �  �  Y0�?  PQV�  &�  V�  &�  
V�
  �  �  '�  
�  V�
  �  �  '�  
�
  V�
  �  �  '�  
�  V�
  �  �  '�  
�	  V�
  �  �  '�  
�  V�
  �  �  '�  
�  V�
  �  �  (V�
  �  �  '�  
�  V�  &�  
V�
  �  �  '�  
�  V�
  �  �  '�  
�
  V�
  �  �  '�  
�  V�
  �  �  '�  
�	  V�
  �  �  '�  
�  V�
  �  �  '�  
�  V�
  �  �  (V�
  �   �  '�  
�
  V�  &�  
V�
  �!  �  '�  
�  V�
  �!  �  '�  
�
  V�
  �"  �  '�  
�  V�
  �#  �  '�  
�	  V�
  �#  �  '�  
�  V�
  �#  �  '�  
�  V�
  �#  �  (V�
  �   �  '�  
�  V�  &�  
V�
  �!  �  '�  
�  V�
  �!  �  '�  
�
  V�
  �"  �  '�  
�  V�
  �$  �  '�  
�	  V�
  �$  �  '�  
�  V�
  �%  �  '�  
�  V�
  �&  �  (V�
  �'  �  '�  
�	  V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �*  �  '�  
�  V�
  �+  �  '�  
�	  V�
  �,  �  '�  
�  V�
  �%  �  '�  
�  V�
  �&  �  (V�
  �'  �  '�  
�  V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �*  �  '�  
�  V�
  �+  �  '�  
�	  V�
  �-  �  '�  
�  V�
  �.  �  '�  
�  V�
  �/  �  (V�
  �0  �  (V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �1  �  '�  
�  V�
  �2  �  '�  
�	  V�
  �3  �  '�  
�  V�
  �4  �  '�  
�  V�
  �4  �  (V�
  �5  �  �  Y0�@  PQV�  ;�A  �  PQT�B  P�  Q�  ;�C  �  P�  R�  PQT�D  �
  Q�  ;�E  �  P�  R�  PQT�  �
  Q�  �  &P�C  QV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  'P�  �
  �  �	  QV�  ;�G  �  PQT�B  P�  �  Q�  ;�F  �G  L�  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  �  &P�E  QV�  ;�F  �A  L�C  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �  �  �	  QV�  ;�H  �  PQT�B  P�  �
  Q�  ;�F  �H  L�C  M�  �  T�=  P�F  L�  MQ�  �  T�=  P�  Q�  �  &P�C  �  PQT�D  �
  �  QV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  'P�  �  �  �  QV�  ;�I  �  PQT�B  P�  �  Q�  ;�F  �I  LM�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  �  &P�E  �  PQT�  �
  �  QV�  ;�F  �A  L�C  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �  �  �
  QV�  ;�J  �  PQT�B  P�  �
  Q�  ;�F  �J  L�C  M�  �  T�=  P�F  LMQ�  �  T�=  P�  Q�  �  &PP�C  �E  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �	  �C  �E  QV�  ;�K  �  PQT�B  P�  Q�  ;�F  �K  L�  M�  �  T�=  P�F  L�  MQ�  �  T�=  P�  Q�  �  &PP�C  �  PQT�D  �
  �  �E  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�
  Q�  'P�  �  �C  �  PQT�D  �
  �  �E  QV�  ;�L  �  PQT�B  P�
  Q�  ;�F  �L  LM�  �  T�=  P�F  L�  MQ�  �  T�=  P�
  Q�  �  &PP�C  �E  �  PQT�  �
  �  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �
  �C  �E  �  PQT�  �
  �  QV�  ;�M  �  PQT�B  P�  Q�  ;�F  �M  L�  M�  �  T�=  P�F  LMQ�  �  T�=  P�  Q�  �  &PP�C  �  PQT�D  �
  �  �E  �  PQT�  �
  �  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�	  Q�  'P�  �  �C  �  PQT�D  �
  �  �E  �  PQT�  �
  �  QV�  ;�N  �  PQT�B  P�	  Q�  ;�F  �N  LM�  �  T�=  P�F  LMQ�  �  T�=  P�	  QYY0�O  P�P  QV�  �  �P  �  �Q  P�6  QYY0�Q  P�R  QV�  /�R  V�  �6  VW�S  T�Q  P�6  R�  Q�  �7  VW�S  T�Q  P�7  R�  Q�  �8  V�  �T  P�  Q�  W�S  T�Q  P�8  R�  Q�  �  VW�S  T�Q  P�  R�  Q�  �9  V�  �T  P�  Q�  W�S  T�Q  P�9  R�  Q�  �  VW�S  T�Q  P�  R�  Q�  �  V�  �T  P�  Q�  W�S  T�Q  P�  R�
  QYY0�T  P�U  QV�  &�  	V.�  ;�V  �  &�U  V�  &�U  	�  V�  &�U  	�  V�V  �  �  '�U  	�:  V�V  �  �  '�U  	�;  V�V  �  �  '�U  	�  V�V  �<  �  '�U  	�=  V�V  �>  �  '�U  	�?  V�V  �@  �  (V�V  �A  �  (V�  &�U  �@  V�V  �B  �  (V�V  �U  �
  �  �  '�U  �  V�V  �  �  '�U  �
  V�V  �  �  (V�V  �  �  ;�W  �  �3  PPP�V  �
  Q�C  Q�:  RQ�  �X  �V  �  W�Y  T�Z  P�  P�  R�  R�  R�W  QQ�  Y0�[  P�\  R�]  QV�  /�\  V�  �D  V�@  PQ�  �E  V�Q  P�]  Q�  �F  V�6  PQ�  �G  V�?  PQ�  �H  V�4  PQ�  �I  V�!  PQ�  �J  V�%  PQ�  �K  V�#  PQ�  �L  V�'  P�]  LMR�]  L�  MQ�  �M  V�,  P�]  LMR�]  L�  MQ�  �N  V�  PQ�  �O  V�0  PQ�  �P  V�-  PQ�  �Q  V�1  P�]  LMR�]  L�  MQ�  �R  VW�  T�^  W�  T�^  Y`      GDSC      �   z   �     �����Ӷ�   ���������Ӷ�   ���Ӷ���   ����Ӷ��   ����������������Ӷ��   ���������¶�   �����������ڶ���   	   continent            �G�z�?  �������?              �������?  {�G�z�?        ��Q���?  {�G�z�?  ���Q��?        �������?        �z�G��?                    
ףp=
�?   	      
              �>            continentconflict      	   elevation                005a32       �?      238443        @      41ab5d       @@      78c679       �@      addd8e       �@      d9f0a3       �@      f7fcb9       �@      ffffe5        A      fff7bc       A      fee391        A      fec44f       0A      fe9929       @A      ec7014       PA      cc4c02       `A      993404       pA      662506       �A      fff7fb        rainfall      543005        8c510a        bf812d        dfc27d        f6e8c3        f5f5f5        c7eae5        80cdc1        35978f        01665e        003c30        sea   �������?  �������?  333333�?     �?  ������@      6baed6        3182bd        08519c        temperature       4575b4        91bfdb        e0f3f8        ffffbf        fee090        fc8d59        d73027        climate       Polar Desert      5a5a5a        Ice Cap       ffffff        Tundra        bfbfbf     
   Wet Tundra        ccc0da        Polar Wetlands        60497b        Cool Desert       953735        Steppe        948b54        Temperate Woodlands       f2dddc        Temperate Forest      dbeef3        Temperate Wet Forest      93cddd        Temperate Wetlands        31849b        Extreme Desert        ff5050        Desert        ff9900        Subtropical Scrup         cccc00        Subtropical Woodlands         fcd5b4        Mediterranean         d99795        Subtropical Dry Forest        d7e4bc        Subtropical Forest        66ff66        Subtropical Wet Forest        00b050        Subtropical Wetlands      00823b        Tropical Scrup        ffff00        Tropical Woodlands        fffbc1        Tropical Dry Forest       ccff33        Tropical Wet Forest       75923c        Tropical Wetlands         4f6228                                             '      7   	   G   
   W      g      w      �      �      �      �      �      �      �      �      �                          )     3     =     G     Q     [      e  !   o  "   y  #   �  $   �  %   �  &   �  '   �  (   �  )   �  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1   �  2     3     4     5   %  6   /  7   9  8   C  9   F  :   G  ;   M  <   S  =   `  >   m  ?   z  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M     N     O     P   &  Q   4  R   B  S   L  T   O  U   Z  V   g  W   n  X   x  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g     h     i     j      k   *  l   4  m   >  n   H  o   R  p   \  q   f  r   p  s   z  t   �  u   �  v   �  w   �  x   �  y   �  z   3YY0�  P�  R�  QV�  /�  V�  V�  /�  V�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�	  R�
  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  &�  V�  P�  P�  R�  R�  R�  QQ�  (V�  P�  P�  R�  R�  R�  QQ�  �  V�  /�  P�  QV�  �  V�  P�  P�  QQ�  �  V�  P�  P�  QQ�  �  V�  P�  P�   QQ�  �!  V�  P�  P�"  QQ�  �#  V�  P�  P�$  QQ�  �%  V�  P�  P�&  QQ�  �'  V�  P�  P�(  QQ�  �)  V�  P�  P�*  QQ�  �+  V�  P�  P�,  QQ�  �-  V�  P�  P�.  QQ�  �/  V�  P�  P�0  QQ�  �1  V�  P�  P�2  QQ�  �3  V�  P�  P�4  QQ�  �5  V�  P�  P�6  QQ�  �7  V�  P�  P�8  QQ�  �9  V�  P�  P�:  QQ�  �;  V�  P�  P�<  QQ�  �=  V�  &�  PQT�  	�  V�  .�  /�  P�  QV�  �  V�  P�  P�>  QQ�  �  V�  P�  P�?  QQ�  �  V�  P�  P�@  QQ�  �!  V�  P�  P�A  QQ�  �#  V�  P�  P�B  QQ�  �%  V�  P�  P�C  QQ�  �'  V�  P�  P�D  QQ�  �)  V�  P�  P�E  QQ�  �+  V�  P�  P�F  QQ�  �-  V�  P�  P�G  QQ�  �/  V�  P�  P�H  QQ�  �I  V�  �  &�  �  V�  &�  	�  V�  &�  	�J  V�  P�  P�  QQ�  '�  	�K  V�  P�  P�  QQ�  '�  	�L  V�  P�  P�   QQ�  '�  	�  V�  P�  P�"  QQ�  '�  	�M  V�  P�  P�$  QQ�  '�  	�N  V�  P�  P�&  QQ�  (V�  P�  P�(  QQ�  (V�  &�  �3  V�  P�  P�<  QQ�  /�  P�  QV�  �!  V�  P�  P�*  QQ�  �#  V�  P�  P�,  QQ�  �%  V�  P�  P�.  QQ�  �'  V�  P�  P�0  QQ�  �)  V�  P�  P�2  QQ�  �+  V�  P�  P�4  QQ�  �-  V�  P�  P�6  QQ�  �/  V�  P�  P�8  QQ�  �1  V�  P�  P�:  QQ�  �3  V�  P�  P�<  QQ�  '�  �  V�  P�  P�O  QQ�  '�  �  V�  P�  P�P  QQ�  (V�  P�  P�Q  QQ�  �R  V�  &�  PQT�  	�  V.�  &�  
�  V�  P�  P�S  QQ�  /�  P�  QV�  �  V�  P�  P�T  QQ�  �  V�  P�  P�U  QQ�  �!  V�  P�  P�V  QQ�  �#  V�  P�  P�W  QQ�  �%  V�  P�  P�X  QQ�  �'  V�  P�  P�Y  QQ�  �Z  V�  &�  PQT�  	�  V.�  /�  V�  �[  V�  P�  P�\  QQ�  �]  V�  P�  P�^  QQ�  �_  V�  P�  P�`  QQ�  �a  V�  P�  P�b  QQ�  �c  V�  P�  P�d  QQ�  �e  V�  P�  P�f  QQ�  �g  V�  P�  P�h  QQ�  �i  V�  P�  P�j  QQ�  �k  V�  P�  P�l  QQ�  �m  V�  P�  P�n  QQ�  �o  V�  P�  P�p  QQ�  �q  V�  P�  P�r  QQ�  �s  V�  P�  P�t  QQ�  �u  V�  P�  P�v  QQ�  �w  V�  P�  P�x  QQ�  �y  V�  P�  P�z  QQ�  �{  V�  P�  P�|  QQ�  �}  V�  P�  P�~  QQ�  �  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQY`       GDSC            d      �����Ӷ�   �������Ӷ���   ��������   ����������������   �����϶�   ������������ض��   ��������ض��   ��Ŷ   ������Ӷ   ����Ӷ��   ϶��   ζ��                             �>                   
                                 	      
   #      4      8      B      I      S      Z      [      ^      b      3YY8P�  Q;�  Y8P�  Q;�  YYY0�  PQV�  -YY0�  P�  QV�  &LR�  R�  R�  MT�  P�  QV�  �  �  �  &�  �  �  �  V�  �	  T�
  �  �  &�  �  �  �  V�  �	  T�  �  �  �  (V�  �  �  Y`        GDST               n   PNG �PNG

   IHDR         ���   sRGB ���   $IDAT�c` ��b8`D��%����&l!GT@  �y�!���    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/arrow.png"
dest_files=[ "res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST               n   PNG �PNG

   IHDR         ���   sRGB ���   $IDAT�c`  ���	ȣ(DW�a
V�q�q� J/  �<�6:�N    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/arrow_diagonal.png"
dest_files=[ "res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               o   PNG �PNG

   IHDR         ���   sRGB ���   %IDAT�cLKK�π�@iF�����f```
`���U '�D��i�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/cursor.png"
dest_files=[ "res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST              `   PNG �PNG

   IHDR         �Ԛs   sRGB ���   IDAT�c���? $�0��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/node.png"
dest_files=[ "res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/Map.gdc"
          [remap]

path="res://Scripts/Node_info.gdc"
    [remap]

path="res://Scripts/continent.gdc"
    [remap]

path="res://Scripts/cursor.gdc"
       [remap]

path="res://Scripts/elevation_shadow.gdc"
             [remap]

path="res://Scripts/generate_button.gdc"
              [remap]

path="res://Scripts/node.gdc"
         [remap]

path="res://Scripts/node_sprite.gdc"
  [remap]

path="res://Scripts/wind_arrow.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�          ECFG
      _global_script_classes             _global_script_class_icons             application/config/name         World Maker    application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png  '   memory/limits/message_queue/max_size_kb         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               