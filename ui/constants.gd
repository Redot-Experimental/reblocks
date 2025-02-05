extends Object

const CURRENT_DATA_VERSION = 0

const KNOB_X = 10.0
const KNOB_W = 20.0
const KNOB_H = 5.0
const KNOB_Z = 5.0
const CONTROL_MARGIN = 20.0
const OUTLINE_WIDTH = 3.0
const MINIMUM_SNAP_DISTANCE = 80.0
const MINIMUM_DRAG_THRESHOLD = 25
const ROUND_RESOLUTION = 10

const FOCUS_BORDER_COLOR = Color(225, 242, 0)
const DRAG_REMOVE_COLOR = Color(1, 1, 1, 0.5)
const DRAG_PREVIEW_COLOR = Color(225, 242, 0, 0.3)

## Properties for builtin categories. Order starts at 10 for the first
## category and then are separated by 10 to allow custom categories to
## be easily placed between builtin categories.
const BUILTIN_CATEGORIES_PROPS: Dictionary = {
	"Lifecycle":
	{
		"color": Color("EA323C"),
		"order": 10,
	},
	"Lifecycle | Game":
	{
		"color": Color("EA323C"),
		"order": 12,
	},
	"Lifecycle | Spawn":
	{
		"color": Color("EA323C"),
		"order": 15,
	},
	"Transform | Position":
	{
		"color": Color("C42430"),
		"order": 20,
	},
	"Transform | Rotation":
	{
		"color": Color("891E2B"),
		"order": 30,
	},
	"Transform | Scale":
	{
		"color": Color("571C27"),
		"order": 40,
	},
	"Graphics | Modulate":
	{
		"color": Color("93388F"),
		"order": 50,
	},
	"Graphics | Visibility":
	{
		"color": Color("622461"),
		"order": 60,
	},
	"Graphics | Viewport":
	{
		"color": Color("3B1443"),
		"order": 61,
	},
	"Graphics | Animation":
	{
		"color": Color("9400d5ea"),
		"order": 62,
	},
	"UI":
	{
		"color": Color("03aa74"),
		"order": 65,
	},
	"Sounds":
	{
		"color": Color("DB3FFD"),
		"order": 70,
	},
	"Physics | Mass":
	{
		"color": Color("a5b1c2"),
		"order": 80,
	},
	"Physics | Velocity":
	{
		"color": Color("92A1B9"),
		"order": 90,
	},
	"Input":
	{
		"color": Color("d54322"),
		"order": 100,
	},
	"Communication | Methods":
	{
		"color": Color("7A09FA"),
		"order": 110,
	},
	"Communication | Nodes":
	{
		"color": Color("3003D9"),
		"order": 115,
	},
	"Communication | Groups":
	{
		"color": Color("0C0293"),
		"order": 120,
	},
	"Info | Score":
	{
		"color": Color("FF5000"),
		"order": 130,
	},
	"Loops":
	{
		"color": Color("E69C69"),
		"order": 140,
	},
	"Logic | Conditionals":
	{
		"color": Color("BF6F4A"),
		"order": 150,
	},
	"Logic | Comparison":
	{
		"color": Color("8A4836"),
		"order": 160,
	},
	"Logic | Boolean":
	{
		"color": Color("5D2C28"),
		"order": 170,
	},
	"Variables":
	{
		"color": Color("e06000"),
		"order": 180,
	},
	"Math":
	{
		"color": Color("424C6E"),
		"order": 190,
	},
	"Log":
	{
		"color": Color("002050"),
		"order": 200,
	},
}
