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
		"color": Color("ff001aff"),
		"order": 10,
	},
	"Lifecycle | Game":
	{
		"color": Color("ff001aff"),
		"order": 12,
	},
	"Lifecycle | Spawn":
	{
		"color": Color("ff001aff"),
		"order": 15,
	},
	"Transform | Position":
	{
		"color": Color("773344ff"),
		"order": 20,
	},
	"Transform | Rotation":
	{
		"color": Color("773344ff"),
		"order": 30,
	},
	"Transform | Scale":
	{
		"color": Color("773344ff"),
		"order": 40,
	},
	"Graphics | Modulate":
	{
		"color": Color("a37276ff"),
		"order": 50,
	},
	"Graphics | Visibility":
	{
		"color": Color("a37276ff"),
		"order": 60,
	},
	"Graphics | Viewport":
	{
		"color": Color("a37276ff"),
		"order": 61,
	},
	"Graphics | Animation":
	{
		"color": Color("a37276ff"),
		"order": 62,
	},
	"UI":
	{
		"color": Color("03aa74"),
		"order": 65,
	},
	"Sounds":
	{
		"color": Color("7606B8"),
		"order": 70,
	},
	"Physics | Mass":
	{
		"color": Color("264653ff"),
		"order": 80,
	},
	"Physics | Velocity":
	{
		"color": Color("264653ff"),
		"order": 90,
	},
	"Input":
	{
		"color": Color("e76f51ff"),
		"order": 100,
	},
	"Communication | Methods":
	{
		"color": Color("2a9d8fff"),
		"order": 110,
	},
	"Communication | Nodes":
	{
		"color": Color("2a9d8fff"),
		"order": 115,
	},
	"Communication | Groups":
	{
		"color": Color("2a9d8fff"),
		"order": 120,
	},
	"Info | Score":
	{
		"color": Color("FF5000"),
		"order": 130,
	},
	"Loops":
	{
		"color": Color("e9c46aff"),
		"order": 140,
	},
	"Logic | Conditionals":
	{
		"color": Color("e9c46aff"),
		"order": 150,
	},
	"Logic | Comparison":
	{
		"color": Color("e9c46aff"),
		"order": 160,
	},
	"Logic | Boolean":
	{
		"color": Color("e9c46aff"),
		"order": 170,
	},
	"Variables":
	{
		"color": Color("e76f51ff"),
		"order": 180,
	},
	"Math":
	{
		"color": Color("f4a261ff"),
		"order": 190,
	},
	"Log":
	{
		"color": Color("002050"),
		"order": 200,
	},
	"Node | Properties":
	{
		"color": Color("002050"),
		"order": 210,
	}
}