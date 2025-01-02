--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 246 | Scripts: 4 | Modules: 6 | Tags: 0
local G2L = {};

-- StarterGui.Sulfoxide
G2L["1"] = Instance.new("ScreenGui", gethui());
G2L["1"]["DisplayOrder"] = 1923812938;
G2L["1"]["Name"] = [[Sulfoxide]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Sulfoxide.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["2"]["Size"] = UDim2.new(0, 310, 1, -30);
G2L["2"]["Position"] = UDim2.new(1, -30, 1, -30);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Frame.UIListLayout
G2L["3"] = Instance.new("UIListLayout", G2L["2"]);
G2L["3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3"]["Padding"] = UDim.new(0, 20);
G2L["3"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main
G2L["4"] = Instance.new("Frame", G2L["1"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 707, 0, 445);
G2L["4"]["Position"] = UDim2.new(0, 423, 0, 109);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Main]];
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Title
G2L["5"] = Instance.new("TextLabel", G2L["4"]);
G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextSize"] = 28;
G2L["5"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["RichText"] = true;
G2L["5"]["Size"] = UDim2.new(1, -16, 0.00899, 28);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Credits]];
G2L["5"]["Name"] = [[Title]];
G2L["5"]["Position"] = UDim2.new(0, 186, 0, 56);


-- StarterGui.Sulfoxide.Main.group
G2L["6"] = Instance.new("CanvasGroup", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(1, -192, 1.00449, -102);
G2L["6"]["Position"] = UDim2.new(0, 186, 0, 92);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[group]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy
G2L["7"] = Instance.new("ScrollingFrame", G2L["6"]);
G2L["7"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["CanvasSize"] = UDim2.new(0, 0, 0, 66);
G2L["7"]["TopImage"] = [[rbxassetid://6276641225]];
G2L["7"]["MidImage"] = [[rbxassetid://6889812721]];
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Name"] = [[Remotespy]];
G2L["7"]["ScrollBarImageTransparency"] = 0.95;
G2L["7"]["BottomImage"] = [[rbxassetid://6889812791]];
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["ScrollBarThickness"] = 3;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Visible"] = false


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs
G2L["8"] = Instance.new("ScrollingFrame", G2L["7"]);
G2L["8"]["Active"] = true;
G2L["8"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Name"] = [[Logs]];
G2L["8"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["8"]["Size"] = UDim2.new(0, 174, 0, 294);
G2L["8"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Position"] = UDim2.new(0, 0, 0.1427, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["ScrollBarThickness"] = 6;
G2L["8"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["Transparency"] = 0.6;
G2L["9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["9"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.UICorner
G2L["a"] = Instance.new("UICorner", G2L["8"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.UIListLayout
G2L["b"] = Instance.new("UIListLayout", G2L["8"]);
G2L["b"]["Padding"] = UDim.new(0, 5);
G2L["b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.UIPadding
G2L["c"] = Instance.new("UIPadding", G2L["8"]);
G2L["c"]["PaddingTop"] = UDim.new(0, 5);
G2L["c"]["PaddingRight"] = UDim.new(0, 5);
G2L["c"]["PaddingLeft"] = UDim.new(0, 5);
G2L["c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog
G2L["d"] = Instance.new("TextButton", G2L["8"]);
G2L["d"]["AutoButtonColor"] = false;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d"]["Size"] = UDim2.new(1, 0, 0.09258, 0);
G2L["d"]["BackgroundTransparency"] = 0.87;
G2L["d"]["LayoutOrder"] = 7;
G2L["d"]["Name"] = [[examplelog]];
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[]];
G2L["d"]["Position"] = UDim2.new(0, 0, 0.10528, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.Frame
G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["e"]["Position"] = UDim2.new(0, 9, 0, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.Frame.name
G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextSize"] = 13;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Size"] = UDim2.new(0.79265, 0, 0, 14);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Remote name]];
G2L["f"]["Name"] = [[name]];
G2L["f"]["Position"] = UDim2.new(0.17882, 0, 0.15, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.Frame.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["e"]);
G2L["10"]["PaddingTop"] = UDim.new(0, 6);
G2L["10"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.Frame.ImageLabel
G2L["11"] = Instance.new("ImageLabel", G2L["e"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Image"] = [[rbxassetid://104496650657465]];
G2L["11"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(-0.02313, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.Frame.calls
G2L["12"] = Instance.new("TextLabel", G2L["e"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextSize"] = 14;
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(0, 16, 0, 14);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[0]];
G2L["12"]["Name"] = [[calls]];
G2L["12"]["Position"] = UDim2.new(0.97147, 0, 0.15, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Logs.examplelog.UICorner
G2L["13"] = Instance.new("UICorner", G2L["d"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["7"]);
G2L["14"]["PaddingTop"] = UDim.new(0, 1);
G2L["14"]["PaddingRight"] = UDim.new(0, 10);
G2L["14"]["PaddingLeft"] = UDim.new(0, 1);
G2L["14"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons
G2L["15"] = Instance.new("Frame", G2L["7"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Size"] = UDim2.new(0, 311, 0, 138);
G2L["15"]["Position"] = UDim2.new(0.38889, 0, 0.60412, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Buttons]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode
G2L["16"] = Instance.new("TextButton", G2L["15"]);
G2L["16"]["AutoButtonColor"] = false;
G2L["16"]["TextSize"] = 14;
G2L["16"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["16"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["16"]["BackgroundTransparency"] = 0.87;
G2L["16"]["LayoutOrder"] = 7;
G2L["16"]["Name"] = [[Copycode]];
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[]];
G2L["16"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.Frame
G2L["17"] = Instance.new("Frame", G2L["16"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["17"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["17"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.Frame.Button
G2L["18"] = Instance.new("TextLabel", G2L["17"]);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["TextSize"] = 13;
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Copy code]];
G2L["18"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.Frame.UIPadding
G2L["19"] = Instance.new("UIPadding", G2L["17"]);
G2L["19"]["PaddingTop"] = UDim.new(0, 8);
G2L["19"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["16"]);
G2L["1a"]["Transparency"] = 0.6;
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["16"]);
G2L["1b"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copycode.UIFlexItem
G2L["1c"] = Instance.new("UIFlexItem", G2L["16"]);
G2L["1c"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["1c"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath
G2L["1d"] = Instance.new("TextButton", G2L["15"]);
G2L["1d"]["AutoButtonColor"] = false;
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1d"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["1d"]["BackgroundTransparency"] = 0.87;
G2L["1d"]["LayoutOrder"] = 7;
G2L["1d"]["Name"] = [[Copypath]];
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[]];
G2L["1d"]["Position"] = UDim2.new(0.76587, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.Frame
G2L["1e"] = Instance.new("Frame", G2L["1d"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1e"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["1e"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.Frame.Button
G2L["1f"] = Instance.new("TextLabel", G2L["1e"]);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["TextSize"] = 13;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Copy path]];
G2L["1f"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.Frame.UIPadding
G2L["20"] = Instance.new("UIPadding", G2L["1e"]);
G2L["20"]["PaddingTop"] = UDim.new(0, 8);
G2L["20"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["1d"]);
G2L["21"]["Transparency"] = 0.6;
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["21"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.UICorner
G2L["22"] = Instance.new("UICorner", G2L["1d"]);
G2L["22"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Copypath.UIFlexItem
G2L["23"] = Instance.new("UIFlexItem", G2L["1d"]);
G2L["23"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["23"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode
G2L["24"] = Instance.new("TextButton", G2L["15"]);
G2L["24"]["AutoButtonColor"] = false;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["24"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["24"]["BackgroundTransparency"] = 0.87;
G2L["24"]["LayoutOrder"] = 7;
G2L["24"]["Name"] = [[Runcode]];
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[]];
G2L["24"]["Position"] = UDim2.new(0.38889, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.Frame
G2L["25"] = Instance.new("Frame", G2L["24"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["25"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["25"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.Frame.Button
G2L["26"] = Instance.new("TextLabel", G2L["25"]);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["TextSize"] = 13;
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["26"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Run code]];
G2L["26"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.Frame.UIPadding
G2L["27"] = Instance.new("UIPadding", G2L["25"]);
G2L["27"]["PaddingTop"] = UDim.new(0, 8);
G2L["27"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.UIStroke
G2L["28"] = Instance.new("UIStroke", G2L["24"]);
G2L["28"]["Transparency"] = 0.6;
G2L["28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["28"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.UICorner
G2L["29"] = Instance.new("UICorner", G2L["24"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Runcode.UIFlexItem
G2L["2a"] = Instance.new("UIFlexItem", G2L["24"]);
G2L["2a"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["2a"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.UIListLayout
G2L["2b"] = Instance.new("UIListLayout", G2L["15"]);
G2L["2b"]["Wraps"] = true;
G2L["2b"]["Padding"] = UDim.new(0, 5);
G2L["2b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2b"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Center;
G2L["2b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript
G2L["2c"] = Instance.new("TextButton", G2L["15"]);
G2L["2c"]["AutoButtonColor"] = false;
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2c"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["2c"]["BackgroundTransparency"] = 0.87;
G2L["2c"]["LayoutOrder"] = 7;
G2L["2c"]["Name"] = [[Getscript]];
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[]];
G2L["2c"]["Position"] = UDim2.new(0.76587, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.Frame
G2L["2d"] = Instance.new("Frame", G2L["2c"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2d"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["2d"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.Frame.Button
G2L["2e"] = Instance.new("TextLabel", G2L["2d"]);
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["TextSize"] = 13;
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2e"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Get script]];
G2L["2e"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.Frame.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2d"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 8);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2c"]);
G2L["30"]["Transparency"] = 0.6;
G2L["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["30"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.UICorner
G2L["31"] = Instance.new("UICorner", G2L["2c"]);
G2L["31"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getscript.UIFlexItem
G2L["32"] = Instance.new("UIFlexItem", G2L["2c"]);
G2L["32"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["32"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo
G2L["33"] = Instance.new("TextButton", G2L["15"]);
G2L["33"]["AutoButtonColor"] = false;
G2L["33"]["TextSize"] = 14;
G2L["33"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["33"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["33"]["BackgroundTransparency"] = 0.87;
G2L["33"]["LayoutOrder"] = 7;
G2L["33"]["Name"] = [[Getfuncinfo]];
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[]];
G2L["33"]["Position"] = UDim2.new(0.38889, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.Frame
G2L["34"] = Instance.new("Frame", G2L["33"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["34"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["34"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.Frame.Button
G2L["35"] = Instance.new("TextLabel", G2L["34"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextScaled"] = true;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["TextSize"] = 13;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Size"] = UDim2.new(1.6087, 0, 0, 14);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Get func info]];
G2L["35"]["Name"] = [[Button]];
G2L["35"]["Position"] = UDim2.new(-0.2, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.Frame.UIPadding
G2L["36"] = Instance.new("UIPadding", G2L["34"]);
G2L["36"]["PaddingTop"] = UDim.new(0, 8);
G2L["36"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.UIStroke
G2L["37"] = Instance.new("UIStroke", G2L["33"]);
G2L["37"]["Transparency"] = 0.6;
G2L["37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["37"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.UICorner
G2L["38"] = Instance.new("UICorner", G2L["33"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Getfuncinfo.UIFlexItem
G2L["39"] = Instance.new("UIFlexItem", G2L["33"]);
G2L["39"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["39"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs
G2L["3a"] = Instance.new("TextButton", G2L["15"]);
G2L["3a"]["AutoButtonColor"] = false;
G2L["3a"]["TextSize"] = 14;
G2L["3a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3a"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["3a"]["BackgroundTransparency"] = 0.87;
G2L["3a"]["LayoutOrder"] = 7;
G2L["3a"]["Name"] = [[Clearlogs]];
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[]];
G2L["3a"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.Frame
G2L["3b"] = Instance.new("Frame", G2L["3a"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3b"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["3b"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.Frame.Button
G2L["3c"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["TextSize"] = 13;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Text"] = [[Clear logs]];
G2L["3c"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.Frame.UIPadding
G2L["3d"] = Instance.new("UIPadding", G2L["3b"]);
G2L["3d"]["PaddingTop"] = UDim.new(0, 8);
G2L["3d"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.UIStroke
G2L["3e"] = Instance.new("UIStroke", G2L["3a"]);
G2L["3e"]["Transparency"] = 0.6;
G2L["3e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["3e"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3a"]);
G2L["3f"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearlogs.UIFlexItem
G2L["40"] = Instance.new("UIFlexItem", G2L["3a"]);
G2L["40"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["40"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs
G2L["41"] = Instance.new("TextButton", G2L["15"]);
G2L["41"]["AutoButtonColor"] = false;
G2L["41"]["TextSize"] = 14;
G2L["41"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["41"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["41"]["BackgroundTransparency"] = 0.87;
G2L["41"]["LayoutOrder"] = 7;
G2L["41"]["Name"] = [[Excludeargs]];
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[]];
G2L["41"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.Frame
G2L["42"] = Instance.new("Frame", G2L["41"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["42"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["42"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.Frame.Button
G2L["43"] = Instance.new("TextLabel", G2L["42"]);
G2L["43"]["TextWrapped"] = true;
G2L["43"]["TextScaled"] = true;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["TextSize"] = 13;
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["43"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(1.60869, 0, 0, 14);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[Exclude(arg)]];
G2L["43"]["Name"] = [[Button]];
G2L["43"]["Position"] = UDim2.new(-0.21739, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.Frame.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["42"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 8);
G2L["44"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.UIStroke
G2L["45"] = Instance.new("UIStroke", G2L["41"]);
G2L["45"]["Transparency"] = 0.6;
G2L["45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["45"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.UICorner
G2L["46"] = Instance.new("UICorner", G2L["41"]);
G2L["46"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excludeargs.UIFlexItem
G2L["47"] = Instance.new("UIFlexItem", G2L["41"]);
G2L["47"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["47"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote
G2L["48"] = Instance.new("TextButton", G2L["15"]);
G2L["48"]["AutoButtonColor"] = false;
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["48"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["48"]["BackgroundTransparency"] = 0.87;
G2L["48"]["LayoutOrder"] = 7;
G2L["48"]["Name"] = [[Excluderemote]];
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[]];
G2L["48"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.Frame
G2L["49"] = Instance.new("Frame", G2L["48"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["49"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["49"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.Frame.Button
G2L["4a"] = Instance.new("TextLabel", G2L["49"]);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["TextSize"] = 13;
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4a"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["4a"]["BackgroundTransparency"] = 1;
G2L["4a"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[Exclude(r)]];
G2L["4a"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.Frame.UIPadding
G2L["4b"] = Instance.new("UIPadding", G2L["49"]);
G2L["4b"]["PaddingTop"] = UDim.new(0, 8);
G2L["4b"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.UIStroke
G2L["4c"] = Instance.new("UIStroke", G2L["48"]);
G2L["4c"]["Transparency"] = 0.6;
G2L["4c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["4c"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["48"]);
G2L["4d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Excluderemote.UIFlexItem
G2L["4e"] = Instance.new("UIFlexItem", G2L["48"]);
G2L["4e"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["4e"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs
G2L["4f"] = Instance.new("TextButton", G2L["15"]);
G2L["4f"]["AutoButtonColor"] = false;
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["4f"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["4f"]["BackgroundTransparency"] = 0.87;
G2L["4f"]["LayoutOrder"] = 7;
G2L["4f"]["Name"] = [[Blockargs]];
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Text"] = [[]];
G2L["4f"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.Frame
G2L["50"] = Instance.new("Frame", G2L["4f"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["50"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["50"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.Frame.Button
G2L["51"] = Instance.new("TextLabel", G2L["50"]);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["TextSize"] = 13;
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["51"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[Block(arg)]];
G2L["51"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.Frame.UIPadding
G2L["52"] = Instance.new("UIPadding", G2L["50"]);
G2L["52"]["PaddingTop"] = UDim.new(0, 8);
G2L["52"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.UIStroke
G2L["53"] = Instance.new("UIStroke", G2L["4f"]);
G2L["53"]["Transparency"] = 0.6;
G2L["53"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["53"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.UICorner
G2L["54"] = Instance.new("UICorner", G2L["4f"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockargs.UIFlexItem
G2L["55"] = Instance.new("UIFlexItem", G2L["4f"]);
G2L["55"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["55"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote
G2L["56"] = Instance.new("TextButton", G2L["15"]);
G2L["56"]["AutoButtonColor"] = false;
G2L["56"]["TextSize"] = 14;
G2L["56"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["56"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["56"]["BackgroundTransparency"] = 0.87;
G2L["56"]["LayoutOrder"] = 7;
G2L["56"]["Name"] = [[Blockremote]];
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[]];
G2L["56"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.Frame
G2L["57"] = Instance.new("Frame", G2L["56"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["57"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["57"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.Frame.Button
G2L["58"] = Instance.new("TextLabel", G2L["57"]);
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["TextSize"] = 13;
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["58"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Text"] = [[Block(r)]];
G2L["58"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.Frame.UIPadding
G2L["59"] = Instance.new("UIPadding", G2L["57"]);
G2L["59"]["PaddingTop"] = UDim.new(0, 8);
G2L["59"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.UIStroke
G2L["5a"] = Instance.new("UIStroke", G2L["56"]);
G2L["5a"]["Transparency"] = 0.6;
G2L["5a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5a"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.UICorner
G2L["5b"] = Instance.new("UICorner", G2L["56"]);
G2L["5b"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Blockremote.UIFlexItem
G2L["5c"] = Instance.new("UIFlexItem", G2L["56"]);
G2L["5c"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["5c"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks
G2L["5d"] = Instance.new("TextButton", G2L["15"]);
G2L["5d"]["AutoButtonColor"] = false;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["5d"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["5d"]["BackgroundTransparency"] = 0.87;
G2L["5d"]["LayoutOrder"] = 7;
G2L["5d"]["Name"] = [[Clearblocks]];
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[]];
G2L["5d"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.Frame
G2L["5e"] = Instance.new("Frame", G2L["5d"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["5e"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["5e"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.Frame.Button
G2L["5f"] = Instance.new("TextLabel", G2L["5e"]);
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["TextSize"] = 13;
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[Clr blocks]];
G2L["5f"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.Frame.UIPadding
G2L["60"] = Instance.new("UIPadding", G2L["5e"]);
G2L["60"]["PaddingTop"] = UDim.new(0, 8);
G2L["60"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.UIStroke
G2L["61"] = Instance.new("UIStroke", G2L["5d"]);
G2L["61"]["Transparency"] = 0.6;
G2L["61"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["61"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.UICorner
G2L["62"] = Instance.new("UICorner", G2L["5d"]);
G2L["62"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearblocks.UIFlexItem
G2L["63"] = Instance.new("UIFlexItem", G2L["5d"]);
G2L["63"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["63"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions
G2L["64"] = Instance.new("TextButton", G2L["15"]);
G2L["64"]["AutoButtonColor"] = false;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["64"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["64"]["BackgroundTransparency"] = 0.87;
G2L["64"]["LayoutOrder"] = 7;
G2L["64"]["Name"] = [[Clearexclusions]];
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[]];
G2L["64"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.Frame
G2L["65"] = Instance.new("Frame", G2L["64"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["65"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["65"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.Frame.Button
G2L["66"] = Instance.new("TextLabel", G2L["65"]);
G2L["66"]["TextWrapped"] = true;
G2L["66"]["TextScaled"] = true;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["TextSize"] = 13;
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["66"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Size"] = UDim2.new(1.52571, 0, 0, 14);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Text"] = [[Clr exclusions]];
G2L["66"]["Name"] = [[Button]];
G2L["66"]["Position"] = UDim2.new(-0.16, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.Frame.UIPadding
G2L["67"] = Instance.new("UIPadding", G2L["65"]);
G2L["67"]["PaddingTop"] = UDim.new(0, 8);
G2L["67"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.UIStroke
G2L["68"] = Instance.new("UIStroke", G2L["64"]);
G2L["68"]["Transparency"] = 0.6;
G2L["68"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["68"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.UICorner
G2L["69"] = Instance.new("UICorner", G2L["64"]);
G2L["69"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Clearexclusions.UIFlexItem
G2L["6a"] = Instance.new("UIFlexItem", G2L["64"]);
G2L["6a"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["6a"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock
G2L["6b"] = Instance.new("TextButton", G2L["15"]);
G2L["6b"]["AutoButtonColor"] = false;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6b"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["6b"]["BackgroundTransparency"] = 0.87;
G2L["6b"]["LayoutOrder"] = 7;
G2L["6b"]["Name"] = [[Autoblock]];
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[]];
G2L["6b"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.Frame
G2L["6c"] = Instance.new("Frame", G2L["6b"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6c"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["6c"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.Frame.Button
G2L["6d"] = Instance.new("TextLabel", G2L["6c"]);
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["TextSize"] = 13;
G2L["6d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6d"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["6d"]["BackgroundTransparency"] = 1;
G2L["6d"]["Size"] = UDim2.new(1.25, 0, 0, 14);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Text"] = [[Auto block]];
G2L["6d"]["Name"] = [[Button]];
G2L["6d"]["Position"] = UDim2.new(-0.055, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.Frame.UIPadding
G2L["6e"] = Instance.new("UIPadding", G2L["6c"]);
G2L["6e"]["PaddingTop"] = UDim.new(0, 8);
G2L["6e"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.UIStroke
G2L["6f"] = Instance.new("UIStroke", G2L["6b"]);
G2L["6f"]["Transparency"] = 0.6;
G2L["6f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["6f"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6b"]);
G2L["70"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Autoblock.UIFlexItem
G2L["71"] = Instance.new("UIFlexItem", G2L["6b"]);
G2L["71"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["71"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode
G2L["72"] = Instance.new("TextButton", G2L["15"]);
G2L["72"]["AutoButtonColor"] = false;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["72"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["72"]["BackgroundTransparency"] = 0.87;
G2L["72"]["LayoutOrder"] = 7;
G2L["72"]["Name"] = [[Viewcode]];
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[]];
G2L["72"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.Frame
G2L["73"] = Instance.new("Frame", G2L["72"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["73"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["73"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.Frame.Button
G2L["74"] = Instance.new("TextLabel", G2L["73"]);
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["TextSize"] = 13;
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Size"] = UDim2.new(1.25138, 0, 0, 14);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[View code]];
G2L["74"]["Name"] = [[Button]];
G2L["74"]["Position"] = UDim2.new(-0.0553, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.Frame.UIPadding
G2L["75"] = Instance.new("UIPadding", G2L["73"]);
G2L["75"]["PaddingTop"] = UDim.new(0, 8);
G2L["75"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.UIStroke
G2L["76"] = Instance.new("UIStroke", G2L["72"]);
G2L["76"]["Transparency"] = 0.6;
G2L["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["76"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.UICorner
G2L["77"] = Instance.new("UICorner", G2L["72"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewcode.UIFlexItem
G2L["78"] = Instance.new("UIFlexItem", G2L["72"]);
G2L["78"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["78"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo
G2L["79"] = Instance.new("TextButton", G2L["15"]);
G2L["79"]["TextWrapped"] = true;
G2L["79"]["AutoButtonColor"] = false;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["79"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["79"]["BackgroundTransparency"] = 0.87;
G2L["79"]["LayoutOrder"] = 7;
G2L["79"]["Name"] = [[Viewfuncinfo]];
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[]];
G2L["79"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.Frame
G2L["7a"] = Instance.new("Frame", G2L["79"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["7a"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["7a"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.Frame.Button
G2L["7b"] = Instance.new("TextLabel", G2L["7a"]);
G2L["7b"]["TextWrapped"] = true;
G2L["7b"]["TextScaled"] = true;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["TextSize"] = 13;
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(1.6087, 0, 0, 14);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[View func info]];
G2L["7b"]["Name"] = [[Button]];
G2L["7b"]["Position"] = UDim2.new(-0.21739, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.Frame.UIPadding
G2L["7c"] = Instance.new("UIPadding", G2L["7a"]);
G2L["7c"]["PaddingTop"] = UDim.new(0, 8);
G2L["7c"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.UIStroke
G2L["7d"] = Instance.new("UIStroke", G2L["79"]);
G2L["7d"]["Transparency"] = 0.6;
G2L["7d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["7d"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["79"]);
G2L["7e"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Viewfuncinfo.UIFlexItem
G2L["7f"] = Instance.new("UIFlexItem", G2L["79"]);
G2L["7f"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["7f"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller
G2L["80"] = Instance.new("TextButton", G2L["15"]);
G2L["80"]["AutoButtonColor"] = false;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["ZIndex"] = 2;
G2L["80"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["80"]["Size"] = UDim2.new(0.2, 0, 0.076, 0);
G2L["80"]["BackgroundTransparency"] = 0.87;
G2L["80"]["LayoutOrder"] = 7;
G2L["80"]["Name"] = [[Checkcaller]];
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Text"] = [[]];
G2L["80"]["Position"] = UDim2.new(0.57143, 0, 0.60997, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.Frame
G2L["81"] = Instance.new("Frame", G2L["80"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["81"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["81"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.Frame.Button
G2L["82"] = Instance.new("TextLabel", G2L["81"]);
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["TextSize"] = 13;
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Size"] = UDim2.new(1.19608, 0, 0, 14);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Checkcaller]];
G2L["82"]["Name"] = [[Button]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.Frame.UIPadding
G2L["83"] = Instance.new("UIPadding", G2L["81"]);
G2L["83"]["PaddingTop"] = UDim.new(0, 8);
G2L["83"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.UIStroke
G2L["84"] = Instance.new("UIStroke", G2L["80"]);
G2L["84"]["Transparency"] = 0.6;
G2L["84"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["84"]["Color"] = Color3.fromRGB(34, 34, 34);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.UICorner
G2L["85"] = Instance.new("UICorner", G2L["80"]);
G2L["85"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Buttons.Checkcaller.UIFlexItem
G2L["86"] = Instance.new("UIFlexItem", G2L["80"]);
G2L["86"]["FlexMode"] = Enum.UIFlexMode.Fill;
G2L["86"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Stretch;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters
G2L["87"] = Instance.new("Frame", G2L["7"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["Size"] = UDim2.new(0, 196, 0, 32);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Name"] = [[Filters]];
G2L["87"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.FireServer
G2L["88"] = Instance.new("Frame", G2L["87"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["88"]["Position"] = UDim2.new(-0.00575, 0, 0, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Name"] = [[FireServer]];
G2L["88"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.FireServer.Frame
G2L["89"] = Instance.new("Frame", G2L["88"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["89"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.FireServer.Frame.ImageLabel
G2L["8a"] = Instance.new("ImageLabel", G2L["89"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["8a"]["Image"] = [[rbxassetid://71173545598185]];
G2L["8a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.FireServer.ImageLabel
G2L["8b"] = Instance.new("ImageLabel", G2L["88"]);
G2L["8b"]["ZIndex"] = 123123123;
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["SelectionOrder"] = 999999999;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["Image"] = [[rbxassetid://107881214525428]];
G2L["8b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["BackgroundTransparency"] = 1;
G2L["8b"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.InvokeServer
G2L["8c"] = Instance.new("Frame", G2L["87"]);
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["8c"]["Position"] = UDim2.new(0.15, 0, 0, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Name"] = [[InvokeServer]];
G2L["8c"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.InvokeServer.Frame
G2L["8d"] = Instance.new("Frame", G2L["8c"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["8d"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.InvokeServer.Frame.ImageLabel
G2L["8e"] = Instance.new("ImageLabel", G2L["8d"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["8e"]["Image"] = [[rbxassetid://71173545598185]];
G2L["8e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.InvokeServer.ImageLabel
G2L["8f"] = Instance.new("ImageLabel", G2L["8c"]);
G2L["8f"]["ZIndex"] = 123123123;
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["SelectionOrder"] = 999999999;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["Image"] = [[rbxassetid://78888324456423]];
G2L["8f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["BackgroundTransparency"] = 1;
G2L["8f"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Fire
G2L["90"] = Instance.new("Frame", G2L["87"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["90"]["Position"] = UDim2.new(0.3, 0, 0, 0);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Name"] = [[Fire]];
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Fire.Frame
G2L["91"] = Instance.new("Frame", G2L["90"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["91"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Fire.Frame.ImageLabel
G2L["92"] = Instance.new("ImageLabel", G2L["91"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["92"]["Image"] = [[rbxassetid://71173545598185]];
G2L["92"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Fire.ImageLabel
G2L["93"] = Instance.new("ImageLabel", G2L["90"]);
G2L["93"]["ZIndex"] = 123123123;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["SelectionOrder"] = 999999999;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["Image"] = [[rbxassetid://96274652157241]];
G2L["93"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Invoke
G2L["94"] = Instance.new("Frame", G2L["87"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["94"]["Position"] = UDim2.new(0.45, 0, 0, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Name"] = [[Invoke]];
G2L["94"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Invoke.Frame
G2L["95"] = Instance.new("Frame", G2L["94"]);
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["95"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Invoke.Frame.ImageLabel
G2L["96"] = Instance.new("ImageLabel", G2L["95"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["96"]["Image"] = [[rbxassetid://71173545598185]];
G2L["96"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.Invoke.ImageLabel
G2L["97"] = Instance.new("ImageLabel", G2L["94"]);
G2L["97"]["ZIndex"] = 123123123;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["SelectionOrder"] = 999999999;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["Image"] = [[rbxassetid://104496650657465]];
G2L["97"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientEvent
G2L["98"] = Instance.new("Frame", G2L["87"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["98"]["Position"] = UDim2.new(0.6, 0, 0, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Name"] = [[OnClientEvent]];
G2L["98"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientEvent.Frame
G2L["99"] = Instance.new("Frame", G2L["98"]);
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["99"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientEvent.Frame.ImageLabel
G2L["9a"] = Instance.new("ImageLabel", G2L["99"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9a"]["Image"] = [[rbxassetid://71173545598185]];
G2L["9a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientEvent.ImageLabel
G2L["9b"] = Instance.new("ImageLabel", G2L["98"]);
G2L["9b"]["ZIndex"] = 123123123;
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["SelectionOrder"] = 999999999;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["Image"] = [[rbxassetid://133871620937064]];
G2L["9b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["BackgroundTransparency"] = 1;
G2L["9b"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientInvoke
G2L["9c"] = Instance.new("Frame", G2L["87"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(0, 29, 0, 32);
G2L["9c"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[OnClientInvoke]];
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientInvoke.Frame
G2L["9d"] = Instance.new("Frame", G2L["9c"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["9d"]["Position"] = UDim2.new(0.13793, 0, 0.75, 0);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientInvoke.Frame.ImageLabel
G2L["9e"] = Instance.new("ImageLabel", G2L["9d"]);
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9e"]["Image"] = [[rbxassetid://71173545598185]];
G2L["9e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Position"] = UDim2.new(-0.11765, 0, -0.05882, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.OnClientInvoke.ImageLabel
G2L["9f"] = Instance.new("ImageLabel", G2L["9c"]);
G2L["9f"]["ZIndex"] = 123123123;
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["SelectionOrder"] = 999999999;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["Image"] = [[rbxassetid://81620962510087]];
G2L["9f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["BackgroundTransparency"] = 1;
G2L["9f"]["Position"] = UDim2.new(0.06897, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.LocalScript
G2L["a0"] = Instance.new("LocalScript", G2L["87"]);



-- StarterGui.Sulfoxide.Main.group.Remotespy.Args
G2L["a1"] = Instance.new("ScrollingFrame", G2L["7"]);
G2L["a1"]["Active"] = true;
G2L["a1"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["Name"] = [[Args]];
G2L["a1"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["a1"]["Size"] = UDim2.new(0, 311, 0, 192);
G2L["a1"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Position"] = UDim2.new(0.38889, 0, 0, 0);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["ScrollBarThickness"] = 6;
G2L["a1"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.UIStroke
G2L["a2"] = Instance.new("UIStroke", G2L["a1"]);
G2L["a2"]["Transparency"] = 0.6;
G2L["a2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a2"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a1"]);
G2L["a3"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.UIListLayout
G2L["a4"] = Instance.new("UIListLayout", G2L["a1"]);
G2L["a4"]["Padding"] = UDim.new(0.02, 0);
G2L["a4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["a4"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Center;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example
G2L["a5"] = Instance.new("TextButton", G2L["a1"]);
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["TextSize"] = 14;
G2L["a5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["a5"]["Size"] = UDim2.new(0, 302, 0, 50);
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["Name"] = [[example]];
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Text"] = [[]];


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Title
G2L["a6"] = Instance.new("TextLabel", G2L["a5"]);
G2L["a6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["TextSize"] = 20;
G2L["a6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["a6"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["a6"]["BackgroundTransparency"] = 1;
G2L["a6"]["RichText"] = true;
G2L["a6"]["Size"] = UDim2.new(0.96424, -16, 0, 28);
G2L["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a6"]["Text"] = [[Call 1]];
G2L["a6"]["Name"] = [[Title]];
G2L["a6"]["Position"] = UDim2.new(-0.00341, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.UIPadding
G2L["a7"] = Instance.new("UIPadding", G2L["a5"]);
G2L["a7"]["PaddingLeft"] = UDim.new(0.03, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Frame
G2L["a8"] = Instance.new("Frame", G2L["a5"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["Size"] = UDim2.new(0, 285, 0, 29);
G2L["a8"]["Position"] = UDim2.new(0, 0, 0.49123, 0);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Frame.Index
G2L["a9"] = Instance.new("TextLabel", G2L["a8"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["TextSize"] = 16;
G2L["a9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["BackgroundTransparency"] = 1;
G2L["a9"]["Size"] = UDim2.new(0, 26, 0, 23);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[1]];
G2L["a9"]["Name"] = [[Index]];
G2L["a9"]["Position"] = UDim2.new(0, 0, 0.10345, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Frame.Key
G2L["aa"] = Instance.new("TextLabel", G2L["a8"]);
G2L["aa"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["TextSize"] = 16;
G2L["aa"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["BackgroundTransparency"] = 1;
G2L["aa"]["Size"] = UDim2.new(0, 239, 0, 29);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Text"] = [[nil]];
G2L["aa"]["Name"] = [[Key]];
G2L["aa"]["Position"] = UDim2.new(0.11579, 0, 0, 0);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Frame.UICorner
G2L["ab"] = Instance.new("UICorner", G2L["a8"]);
G2L["ab"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.Frame.UIStroke
G2L["ac"] = Instance.new("UIStroke", G2L["a8"]);
G2L["ac"]["Transparency"] = 0.6;
G2L["ac"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ac"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Remotespy.Args.example.UIListLayout
G2L["ad"] = Instance.new("UIListLayout", G2L["a5"]);
G2L["ad"]["Padding"] = UDim.new(0.03, 0);
G2L["ad"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main.group.Credits
G2L["ae"] = Instance.new("ScrollingFrame", G2L["6"]);
G2L["ae"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["ae"]["TopImage"] = [[rbxassetid://6276641225]];
G2L["ae"]["MidImage"] = [[rbxassetid://6889812721]];
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["Name"] = [[Credits]];
G2L["ae"]["ScrollBarImageTransparency"] = 0.95;
G2L["ae"]["BottomImage"] = [[rbxassetid://6889812791]];
G2L["ae"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["ScrollBarThickness"] = 3;
G2L["ae"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Credits.UIListLayout
G2L["af"] = Instance.new("UIListLayout", G2L["ae"]);
G2L["af"]["Padding"] = UDim.new(0, 5);
G2L["af"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main.group.Credits.UIPadding
G2L["b0"] = Instance.new("UIPadding", G2L["ae"]);
G2L["b0"]["PaddingTop"] = UDim.new(0, 1);
G2L["b0"]["PaddingRight"] = UDim.new(0, 10);
G2L["b0"]["PaddingLeft"] = UDim.new(0, 1);
G2L["b0"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton
G2L["b1"] = Instance.new("TextButton", G2L["ae"]);
G2L["b1"]["AutoButtonColor"] = false;
G2L["b1"]["TextSize"] = 14;
G2L["b1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["b1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b1"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b1"]["BackgroundTransparency"] = 0.87;
G2L["b1"]["LayoutOrder"] = 7;
G2L["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["Text"] = [[]];


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.UICorner
G2L["b2"] = Instance.new("UICorner", G2L["b1"]);
G2L["b2"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.UIStroke
G2L["b3"] = Instance.new("UIStroke", G2L["b1"]);
G2L["b3"]["Transparency"] = 0.6;
G2L["b3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b3"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.Frame
G2L["b4"] = Instance.new("Frame", G2L["b1"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b4"]["Size"] = UDim2.new(1, -28, 0, 0);
G2L["b4"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.Frame.UIListLayout
G2L["b5"] = Instance.new("UIListLayout", G2L["b4"]);
G2L["b5"]["Padding"] = UDim.new(0.02, 0);
G2L["b5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["b5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.Frame.UIPadding
G2L["b6"] = Instance.new("UIPadding", G2L["b4"]);
G2L["b6"]["PaddingTop"] = UDim.new(0, 13);
G2L["b6"]["PaddingBottom"] = UDim.new(0, 13);


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.Frame.TextLabel
G2L["b7"] = Instance.new("TextLabel", G2L["b4"]);
G2L["b7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["TextSize"] = 13;
G2L["b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["b7"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["b7"]["BackgroundTransparency"] = 1;
G2L["b7"]["Size"] = UDim2.new(1, 0, 0, 14);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Text"] = [[Thank you for using Sulfoxide!]];


-- StarterGui.Sulfoxide.Main.group.Credits.TextButton.Frame.TextLabel
G2L["b8"] = Instance.new("TextLabel", G2L["b4"]);
G2L["b8"]["TextWrapped"] = true;
G2L["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["TextSize"] = 12;
G2L["b8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b8"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["RichText"] = true;
G2L["b8"]["Size"] = UDim2.new(1, 0, 0, 14);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Text"] = [[0_void: Main dev<br />5awid: UI base<br />andrewdarkyy: help]];
G2L["b8"]["AutomaticSize"] = Enum.AutomaticSize.Y;


-- StarterGui.Sulfoxide.Main.group.Codeviewer
G2L["b9"] = Instance.new("ScrollingFrame", G2L["6"]);
G2L["b9"]["Visible"] = false;
G2L["b9"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["b9"]["TopImage"] = [[rbxassetid://6276641225]];
G2L["b9"]["MidImage"] = [[rbxassetid://6889812721]];
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["Name"] = [[Codeviewer]];
G2L["b9"]["ScrollBarImageTransparency"] = 0.95;
G2L["b9"]["BottomImage"] = [[rbxassetid://6889812791]];
G2L["b9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["ScrollBarThickness"] = 3;
G2L["b9"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.group.Codeviewer.UIPadding
G2L["ba"] = Instance.new("UIPadding", G2L["b9"]);
G2L["ba"]["PaddingTop"] = UDim.new(0, 1);
G2L["ba"]["PaddingRight"] = UDim.new(0, 10);
G2L["ba"]["PaddingLeft"] = UDim.new(0, 1);
G2L["ba"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ide
G2L["bb"] = Instance.new("ModuleScript", G2L["b9"]);
G2L["bb"]["Name"] = [[ide]];


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ide.highlight
G2L["bc"] = Instance.new("ModuleScript", G2L["bb"]);
G2L["bc"]["Name"] = [[highlight]];


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ide.highlight.lexer
G2L["bd"] = Instance.new("ModuleScript", G2L["bc"]);
G2L["bd"]["Name"] = [[lexer]];


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ide.highlight.lexer.language
G2L["be"] = Instance.new("ModuleScript", G2L["bd"]);
G2L["be"]["Name"] = [[language]];


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame
G2L["bf"] = Instance.new("ScrollingFrame", G2L["b9"]);
G2L["bf"]["Active"] = true;
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["bf"]["Size"] = UDim2.new(0, 504, 0, 335);
G2L["bf"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Position"] = UDim2.new(0.00595, 0, 0, 0);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["ScrollBarThickness"] = 6;
G2L["bf"]["BackgroundTransparency"] = 0.87;


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame.UIStroke
G2L["c0"] = Instance.new("UIStroke", G2L["bf"]);
G2L["c0"]["Transparency"] = 0.6;
G2L["c0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["c0"]["Color"] = Color3.fromRGB(36, 36, 36);


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame.UICorner
G2L["c1"] = Instance.new("UICorner", G2L["bf"]);
G2L["c1"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame.Lines
G2L["c2"] = Instance.new("TextLabel", G2L["bf"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["TextSize"] = 14;
G2L["c2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["BackgroundTransparency"] = 1;
G2L["c2"]["Size"] = UDim2.new(0, 30, 0, 324);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Text"] = [[1]];
G2L["c2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c2"]["Name"] = [[Lines]];
G2L["c2"]["Position"] = UDim2.new(0, 0, 0, 10);


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame.Lines.Frame
G2L["c3"] = Instance.new("Frame", G2L["c2"]);
G2L["c3"]["ZIndex"] = 2;
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["c3"]["Size"] = UDim2.new(0, -1, 1, 0);
G2L["c3"]["Position"] = UDim2.new(1, 0, 0.001, 0);


-- StarterGui.Sulfoxide.Main.group.Codeviewer.ScrollingFrame.TextBox
G2L["c4"] = Instance.new("TextBox", G2L["bf"]);
G2L["c4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["TextEditable"] = false;
G2L["c4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c4"]["TextTransparency"] = 1;
G2L["c4"]["TextSize"] = 14;
G2L["c4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c4"]["Selectable"] = false;
G2L["c4"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c4"]["ClearTextOnFocus"] = false;
G2L["c4"]["Size"] = UDim2.new(0, 461, 0, 329);
G2L["c4"]["Position"] = UDim2.new(0, 35, 0, 8);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Text"] = [[]];
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Tabs
G2L["c5"] = Instance.new("Frame", G2L["4"]);
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["ClipsDescendants"] = true;
G2L["c5"]["Size"] = UDim2.new(0, 160, 1, -66);
G2L["c5"]["Position"] = UDim2.new(0, 12, 0, 54);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Name"] = [[Tabs]];
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame
G2L["c6"] = Instance.new("ScrollingFrame", G2L["c5"]);
G2L["c6"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["CanvasSize"] = UDim2.new(0, 0, 0, 72);
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["ScrollBarImageTransparency"] = 1;
G2L["c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c6"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["ScrollBarThickness"] = 0;
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.UIListLayout
G2L["c7"] = Instance.new("UIListLayout", G2L["c6"]);
G2L["c7"]["Padding"] = UDim.new(0, 4);
G2L["c7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.LocalScript
G2L["c8"] = Instance.new("LocalScript", G2L["c6"]);



-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Remotespy
G2L["c9"] = Instance.new("TextButton", G2L["c6"]);
G2L["c9"]["AutoButtonColor"] = false;
G2L["c9"]["TextSize"] = 14;
G2L["c9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c9"]["Size"] = UDim2.new(1, 0, 0, 34);
G2L["c9"]["BackgroundTransparency"] = 1;
G2L["c9"]["Name"] = [[Remotespy]];
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["Text"] = [[]];


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Remotespy.UICorner
G2L["ca"] = Instance.new("UICorner", G2L["c9"]);
G2L["ca"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Remotespy.TextLabel
G2L["cb"] = Instance.new("TextLabel", G2L["c9"]);
G2L["cb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["TextSize"] = 12;
G2L["cb"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cb"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["cb"]["BackgroundTransparency"] = 1;
G2L["cb"]["RichText"] = true;
G2L["cb"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["cb"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cb"]["Text"] = [[RemoteSpy]];
G2L["cb"]["Position"] = UDim2.new(0, 12, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Remotespy.ImageLabel
G2L["cc"] = Instance.new("ImageLabel", G2L["c9"]);
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["cc"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["cc"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["BackgroundTransparency"] = 1;
G2L["cc"]["Position"] = UDim2.new(0, 8, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Codeviewer
G2L["cd"] = Instance.new("TextButton", G2L["c6"]);
G2L["cd"]["AutoButtonColor"] = false;
G2L["cd"]["TextSize"] = 14;
G2L["cd"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cd"]["Size"] = UDim2.new(1, 0, 0, 34);
G2L["cd"]["BackgroundTransparency"] = 1;
G2L["cd"]["Name"] = [[Codeviewer]];
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Text"] = [[]];


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Codeviewer.UICorner
G2L["ce"] = Instance.new("UICorner", G2L["cd"]);
G2L["ce"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Codeviewer.TextLabel
G2L["cf"] = Instance.new("TextLabel", G2L["cd"]);
G2L["cf"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["TextSize"] = 12;
G2L["cf"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cf"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["cf"]["BackgroundTransparency"] = 1;
G2L["cf"]["RichText"] = true;
G2L["cf"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["cf"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cf"]["Text"] = [[Codeviewer]];
G2L["cf"]["Position"] = UDim2.new(0, 12, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Codeviewer.ImageLabel
G2L["d0"] = Instance.new("ImageLabel", G2L["cd"]);
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d0"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["d0"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["BackgroundTransparency"] = 1;
G2L["d0"]["Position"] = UDim2.new(0, 8, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Credits
G2L["d1"] = Instance.new("TextButton", G2L["c6"]);
G2L["d1"]["AutoButtonColor"] = false;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["Size"] = UDim2.new(1, 0, 0, 34);
G2L["d1"]["BackgroundTransparency"] = 0.89;
G2L["d1"]["Name"] = [[Credits]];
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[]];


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Credits.UICorner
G2L["d2"] = Instance.new("UICorner", G2L["d1"]);
G2L["d2"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Credits.TextLabel
G2L["d3"] = Instance.new("TextLabel", G2L["d1"]);
G2L["d3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["TextSize"] = 12;
G2L["d3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d3"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d3"]["BackgroundTransparency"] = 1;
G2L["d3"]["RichText"] = true;
G2L["d3"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["d3"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d3"]["Text"] = [[Credits]];
G2L["d3"]["Position"] = UDim2.new(0, 30, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.Credits.ImageLabel
G2L["d4"] = Instance.new("ImageLabel", G2L["d1"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d4"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["d4"]["Image"] = [[rbxassetid://10734950309]];
G2L["d4"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["BackgroundTransparency"] = 1;
G2L["d4"]["Position"] = UDim2.new(0, 8, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Tabs.Selected
G2L["d5"] = Instance.new("Frame", G2L["c5"]);
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(97, 206, 255);
G2L["d5"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["d5"]["Size"] = UDim2.new(0, 4, 0, 16);
G2L["d5"]["Position"] = UDim2.new(0, 0, 0, 93);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["Name"] = [[Selected]];


-- StarterGui.Sulfoxide.Main.Tabs.Selected.UICorner
G2L["d6"] = Instance.new("UICorner", G2L["d5"]);
G2L["d6"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.Sulfoxide.Main.Resize
G2L["d7"] = Instance.new("Frame", G2L["4"]);
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["d7"]["Position"] = UDim2.new(1, -20, 1, -20);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Name"] = [[Resize]];
G2L["d7"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Topbar
G2L["d8"] = Instance.new("Frame", G2L["4"]);
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["Size"] = UDim2.new(1, 0, 0, 42);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["Name"] = [[Topbar]];
G2L["d8"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Topbar.Frame
G2L["d9"] = Instance.new("Frame", G2L["d8"]);
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["Size"] = UDim2.new(1, -16, 1, 0);
G2L["d9"]["Position"] = UDim2.new(0, 16, 0, 0);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Topbar.Frame.UIListLayout
G2L["da"] = Instance.new("UIListLayout", G2L["d9"]);
G2L["da"]["Padding"] = UDim.new(0, 5);
G2L["da"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["da"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Sulfoxide.Main.Topbar.Frame.TextLabel
G2L["db"] = Instance.new("TextLabel", G2L["d9"]);
G2L["db"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["TextSize"] = 12;
G2L["db"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["db"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["db"]["BackgroundTransparency"] = 1;
G2L["db"]["RichText"] = true;
G2L["db"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["Text"] = [[Sulfoxide prerelease-1]];
G2L["db"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.Sulfoxide.Main.Topbar.Frame.TextLabel
G2L["dc"] = Instance.new("TextLabel", G2L["d9"]);
G2L["dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["dc"]["TextTransparency"] = 0.4;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["TextSize"] = 12;
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["RichText"] = true;
G2L["dc"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[by 0_Void]];
G2L["dc"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.Sulfoxide.Main.Topbar.Frame
G2L["dd"] = Instance.new("Frame", G2L["d8"]);
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
G2L["dd"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["dd"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dd"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Sulfoxide.Main.Topbar.Close
G2L["de"] = Instance.new("TextButton", G2L["d8"]);
G2L["de"]["AutoButtonColor"] = false;
G2L["de"]["TextSize"] = 14;
G2L["de"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["de"]["BackgroundColor3"] = Color3.fromRGB(241, 241, 241);
G2L["de"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["de"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["de"]["Size"] = UDim2.new(0, 34, 1, -8);
G2L["de"]["BackgroundTransparency"] = 1;
G2L["de"]["Name"] = [[Close]];
G2L["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["de"]["Text"] = [[]];
G2L["de"]["Position"] = UDim2.new(1, -4, 0, 4);


-- StarterGui.Sulfoxide.Main.Topbar.Close.UICorner
G2L["df"] = Instance.new("UICorner", G2L["de"]);
G2L["df"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.Sulfoxide.Main.Topbar.Close.Icon
G2L["e0"] = Instance.new("ImageLabel", G2L["de"]);
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["e0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e0"]["Image"] = [[rbxassetid://9886659671]];
G2L["e0"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["BackgroundTransparency"] = 1;
G2L["e0"]["Name"] = [[Icon]];
G2L["e0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Topbar.Minimize
G2L["e1"] = Instance.new("TextButton", G2L["d8"]);
G2L["e1"]["AutoButtonColor"] = false;
G2L["e1"]["TextSize"] = 14;
G2L["e1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(241, 241, 241);
G2L["e1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e1"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["e1"]["Size"] = UDim2.new(0, 34, 1, -8);
G2L["e1"]["BackgroundTransparency"] = 1;
G2L["e1"]["Name"] = [[Minimize]];
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["Text"] = [[]];
G2L["e1"]["Position"] = UDim2.new(1, -40, 0, 4);


-- StarterGui.Sulfoxide.Main.Topbar.Minimize.UICorner
G2L["e2"] = Instance.new("UICorner", G2L["e1"]);
G2L["e2"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.Sulfoxide.Main.Topbar.Minimize.Icon
G2L["e3"] = Instance.new("ImageLabel", G2L["e1"]);
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["e3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e3"]["Image"] = [[rbxassetid://9886659276]];
G2L["e3"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["BackgroundTransparency"] = 1;
G2L["e3"]["Name"] = [[Icon]];
G2L["e3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Sulfoxide.Main.Topbar.drag
G2L["e4"] = Instance.new("LocalScript", G2L["d8"]);
G2L["e4"]["Name"] = [[drag]];


-- StarterGui.Sulfoxide.Main.Topbar.buttonhandler
G2L["e5"] = Instance.new("LocalScript", G2L["d8"]);
G2L["e5"]["Name"] = [[buttonhandler]];


-- StarterGui.Sulfoxide.Main.Frame
G2L["e6"] = Instance.new("Frame", G2L["4"]);
G2L["e6"]["ZIndex"] = 0;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e6"]["BackgroundTransparency"] = 0.9;


-- StarterGui.Sulfoxide.Main.Frame.UICorner
G2L["e7"] = Instance.new("UICorner", G2L["e6"]);



-- StarterGui.Sulfoxide.Main.Frame.Background
G2L["e8"] = Instance.new("Frame", G2L["e6"]);
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Name"] = [[Background]];
G2L["e8"]["BackgroundTransparency"] = 0.45;


-- StarterGui.Sulfoxide.Main.Frame.Background.UICorner
G2L["e9"] = Instance.new("UICorner", G2L["e8"]);



-- StarterGui.Sulfoxide.Main.Frame.Frame
G2L["ea"] = Instance.new("Frame", G2L["e6"]);
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ea"]["BackgroundTransparency"] = 0.4;


-- StarterGui.Sulfoxide.Main.Frame.Frame.UICorner
G2L["eb"] = Instance.new("UICorner", G2L["ea"]);



-- StarterGui.Sulfoxide.Main.Frame.Frame.UIGradient
G2L["ec"] = Instance.new("UIGradient", G2L["ea"]);
G2L["ec"]["Rotation"] = 90;
G2L["ec"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(26, 26, 26)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- StarterGui.Sulfoxide.Main.Frame.Frame
G2L["ed"] = Instance.new("Frame", G2L["e6"]);
G2L["ed"]["ZIndex"] = 2;
G2L["ed"]["BorderSizePixel"] = 0;
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ed"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ed"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Frame.Frame.UICorner
G2L["ee"] = Instance.new("UICorner", G2L["ed"]);



-- StarterGui.Sulfoxide.Main.Frame.Frame.UIStroke
G2L["ef"] = Instance.new("UIStroke", G2L["ed"]);
G2L["ef"]["Transparency"] = 0.5;
G2L["ef"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.Sulfoxide.Main.Frame.ImageLabel
G2L["f0"] = Instance.new("ImageLabel", G2L["e6"]);
G2L["f0"]["BorderSizePixel"] = 0;
G2L["f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f0"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["f0"]["ImageTransparency"] = 1;
G2L["f0"]["Image"] = [[rbxassetid://9968344227]];
G2L["f0"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["f0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f0"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Frame.ImageLabel.UICorner
G2L["f1"] = Instance.new("UICorner", G2L["f0"]);



-- StarterGui.Sulfoxide.Main.Frame.ImageLabel
G2L["f2"] = Instance.new("ImageLabel", G2L["e6"]);
G2L["f2"]["BorderSizePixel"] = 0;
G2L["f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f2"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["f2"]["ImageTransparency"] = 1;
G2L["f2"]["Image"] = [[rbxassetid://9968344105]];
G2L["f2"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["f2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f2"]["BackgroundTransparency"] = 1;


-- StarterGui.Sulfoxide.Main.Frame.ImageLabel.UICorner
G2L["f3"] = Instance.new("UICorner", G2L["f2"]);



-- StarterGui.Sulfoxide.Main.Frame.ImageLabel
G2L["f4"] = Instance.new("ImageLabel", G2L["e6"]);
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["f4"]["ImageTransparency"] = 0.25;
G2L["f4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f4"]["Image"] = [[rbxassetid://8992230677]];
G2L["f4"]["Size"] = UDim2.new(1, 120, 1, 116);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["BackgroundTransparency"] = 1;
G2L["f4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Sulfoxide.Luatypeencode
G2L["f5"] = Instance.new("ModuleScript", G2L["1"]);
G2L["f5"]["Name"] = [[Luatypeencode]];


-- StarterGui.Sulfoxide.LuaEncode
G2L["f6"] = Instance.new("ModuleScript", G2L["1"]);
G2L["f6"]["Name"] = [[LuaEncode]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["bb"]] = {
Closure = function()
    local script = G2L["bb"];
	local textService = cloneref(game.GetService(game,"TextService"));

-- ui
local scrolling = script.Parent.ScrollingFrame;
local textbox = scrolling.TextBox;
local linesLab = scrolling.Lines;
-- import
local highlight = require(script:WaitForChild("highlight"));

highlight.UpdateColors({
	background = Color3.fromRGB(47, 47, 47),
	iden = Color3.fromRGB(234, 234, 234),
	keyword =  Color3.fromRGB(215, 174, 255),
	builtin = Color3.fromRGB(131, 206, 255),
	string = Color3.fromRGB(196, 255, 193),
	number = Color3.fromRGB(255, 125, 125),
	comment = Color3.fromRGB(140, 140, 155),
	operator = Color3.fromRGB(255, 239, 148)
});
-- vars
local texts = {}; 	-- used texts
local pool = {}; 	-- textlabel pool

-- util
local function getNumberOfLines(str)
	local _, n = str:gsub('\n', '');
	return n;
end

-- core
local old = function() end;


function render(text)
	textbox.Text = text
	local code = textbox.Text;
	-- highlight
	old();
	old = highlight.Highlight(textbox, textbox.Text);
	-- render lines
	local text = "";
	for i=0, getNumberOfLines(code) do
		text = text .. i+1 .. "\n";
	end
	linesLab.TextSize = textbox.TextSize;
	linesLab.Font = textbox.Font;
	linesLab.Text = text;
	-- set CanvasSize
	local canvasX = textService.GetTextSize(textService, code, textbox.TextSize, textbox.Font, Vector2.new());
	local canvasY = textService.GetTextSize(textService, text, textbox.TextSize, textbox.Font, Vector2.new());
	scrolling.CanvasSize = UDim2.new(0, canvasX.X + textbox.TextSize + 24, 0, canvasY.Y + textbox.TextSize);
end

return render
end;
};
G2L_MODULES[G2L["bc"]] = {
Closure = function()
    local script = G2L["bc"];
local Lexer = require(script.lexer)

local defaultColors = {
	background = Color3.fromRGB(47, 47, 47),
	iden = Color3.fromRGB(234, 234, 234),
	keyword =  Color3.fromRGB(215, 174, 255),
	builtin = Color3.fromRGB(131, 206, 255),
	string = Color3.fromRGB(196, 255, 193),
	number = Color3.fromRGB(255, 125, 125),
	comment = Color3.fromRGB(140, 140, 155),
	operator = Color3.fromRGB(255, 239, 148)
};
local TextService = game:GetService("TextService");

local TokenColors = table.create(8);
local TokenFormats = table.create(7)
local ActiveLabels = table.create(3)

local function SanitizeRichText(s)
	return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(s,
		"&", "&amp;"),
		"<", "&lt;"),
		">", "&gt;"),
		"\"", "&quot;"),
		"'", "&apos;"
	)
end

local function SanitizeTabs(s)
	return string.gsub(s, "\t", "    ")
end

local function SanitizeControl(s)
	return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "")
end

local function highlight(textObject, src)
	src = SanitizeTabs(SanitizeControl(src or textObject.Text))

	textObject.RichText = false
	textObject.Text = src
	textObject.TextXAlignment = Enum.TextXAlignment.Left
	textObject.TextYAlignment = Enum.TextYAlignment.Top
	textObject.BackgroundColor3 = TokenColors.background
	textObject.TextColor3 = TokenColors.iden
	textObject.TextTransparency = 0.5

	local textSize = textObject.TextSize

	local _, numLines = string.gsub(src, "\n", "")
	numLines += 1

	local size = TextService:GetTextSize("", textObject.TextSize, textObject.Font, Vector2.new());

	local lineLabels = ActiveLabels[textObject]
	if not lineLabels then
		-- No existing lineLabels, create all new
		lineLabels = table.create(numLines)
		for i = 1, numLines do
			local lineLabel = Instance.new("TextLabel")
			lineLabel.Name = "Line_" .. i
			lineLabel.RichText = true
			lineLabel.BackgroundTransparency = 1
			lineLabel.TextXAlignment = Enum.TextXAlignment.Left
			lineLabel.TextYAlignment = Enum.TextYAlignment.Top
			lineLabel.TextColor3 = TokenColors.iden
			lineLabel.Font = textObject.Font
			lineLabel.TextSize = textSize

			lineLabel.Size = UDim2.new(1, 0, 0, size.Y)
			lineLabel.Position = UDim2.fromOffset(0, size.Y * textObject.LineHeight * (i - 1))
			lineLabel.Text = ""

			lineLabel.Parent = textObject
			lineLabels[i] = lineLabel
		end
	elseif #lineLabels < numLines then
		-- Existing labels, but missing some lines
		for i = #lineLabels + 1, numLines do
			local lineLabel = Instance.new("TextLabel")
			lineLabel.Name = "Line_" .. i
			lineLabel.RichText = true
			lineLabel.BackgroundTransparency = 1
			lineLabel.TextXAlignment = Enum.TextXAlignment.Left
			lineLabel.TextYAlignment = Enum.TextYAlignment.Top
			lineLabel.TextColor3 = TokenColors.iden
			lineLabel.Font = textObject.Font
			lineLabel.TextSize = textSize

			lineLabel.Size = UDim2.new(1, 0, 0, size.Y)
			lineLabel.Position = UDim2.fromOffset(0, size.Y * textObject.LineHeight * (i - 1))
			lineLabel.Text = ""

			lineLabel.Parent = textObject
			lineLabels[i] = lineLabel
		end
	elseif #lineLabels > numLines then
		-- Existing labels, with too many lines
		for i = #lineLabels, numLines, -1 do
			lineLabels[i].Text = ""
		end
	end

	local richText, index, lineNumber = {}, 0, 1
	for token, content in Lexer.scan(src) do
		local Color = TokenColors[token] or TokenColors.iden

		local lines = string.split(SanitizeRichText(content), "\n")
		for l, line in ipairs(lines) do
			if l > 1 then
				-- Set line
				lineLabels[lineNumber].Text = table.concat(richText)
				-- Move to next line
				lineNumber += 1
				index = 0
				table.clear(richText)
			end

			index += 1
			if Color ~= TokenColors.iden and string.find(line, "[%S%C]") then
				richText[index] = string.format(TokenFormats[token], line)
			else
				richText[index] = line
			end
		end
	end

	-- Set final line
	lineLabels[lineNumber].Text = table.concat(richText)

	ActiveLabels[textObject] = lineLabels

	local Cleanup
	Cleanup = textObject.AncestryChanged:Connect(function()
		if textObject.Parent then
			return
		end
		ActiveLabels[textObject] = nil
		Cleanup:Disconnect()
	end)

	return function()
		for _, label in ipairs(lineLabels) do
			label:Destroy()
		end
		table.clear(lineLabels)

		ActiveLabels[textObject] = nil
		Cleanup:Disconnect()
	end
end

-- ty synapse
--[[export type HighlighterColors = {
	background: Color3?,
	iden: Color3?,
	keyword: Color3?,
	builtin: Color3?,
	string: Color3?,
	number: Color3?,
	comment: Color3?,
	operator: Color3?
}]]

local function updateColors(colors)
	-- Setup color data
	TokenColors.background = (colors and colors.background) or Color3.fromRGB(47, 47, 47)
	TokenColors.iden = (colors and colors.iden) or Color3.fromRGB(234, 234, 234)
	TokenColors.keyword = (colors and colors.keyword) or Color3.fromRGB(215, 174, 255)
	TokenColors.builtin = (colors and colors.builtin) or Color3.fromRGB(131, 206, 255)
	TokenColors.string = (colors and colors.string) or Color3.fromRGB(196, 255, 193)
	TokenColors.number = (colors and colors.number) or Color3.fromRGB(255, 125, 125)
	TokenColors.comment = (colors and colors.comment) or Color3.fromRGB(140, 140, 155)
	TokenColors.operator = (colors and colors.operator) or Color3.fromRGB(255, 239, 148)

	for key, color in pairs(TokenColors) do
		TokenFormats[key] = '<font color="#'
			.. string.format("%.2x%.2x%.2x", color.R * 255, color.G * 255, color.B * 255)
			.. '">%s</font>'
	end

	-- Rehighlight existing labels using latest colors
	for label, lineLabels in pairs(ActiveLabels) do
		for _, lineLabel in ipairs(lineLabels) do
			lineLabel.TextColor3 = TokenColors.iden
		end
		highlight(label)
	end
end
pcall(updateColors)

return setmetatable({
	UpdateColors = updateColors,
	Highlight = highlight
}, {
	__call = function(_, textObject, src)
		return highlight(textObject, src)
	end
})
end;
};
G2L_MODULES[G2L["bd"]] = {
Closure = function()
    local script = G2L["bd"];--[=[
	Lexical scanner for creating a sequence of tokens from Lua source code.
	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight
	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------- Original Penlight lexer author
		ryanjmulder <https://github.com/ryanjmulder> ------------- Penlight lexer contributer
		mpeterv <https://github.com/mpeterv> --------------------- Penlight lexer contributer
		Tieske <https://github.com/Tieske> ----------------------- Penlight lexer contributer
		boatbomber <https://github.com/boatbomber> --------------- Roblox port, added builtin token,
		                                                           added patterns for incomplete syntax, bug fixes,
		                                                           behavior changes, token optimization, thread optimization
		                                                           Added lexer.navigator() for non-sequential reads
		Sleitnick <https://github.com/Sleitnick> ----------------- Roblox optimizations
		howmanysmall <https://github.com/howmanysmall> ----------- Lua + Roblox optimizations

	List of possible tokens:
		- iden
		- keyword
		- builtin
		- string
		- number
		- comment
		- operator
--]=]

local lexer = {}

local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
local NUMBER_A = "0x[%da-fA-F]+"
local NUMBER_B = "%d+%.?%d*[eE][%+%-]?%d+"
local NUMBER_C = "%d+[%._]?[%d_eE]*"
local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
local BRACKETS = "[%[%]]+" -- needs to be separate pattern from other operators or it'll mess up multiline strings
local IDEN = "[%a_][%w_]*"
local STRING_EMPTY = "(['\"])%1" --Empty String
local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)" --TODO: Handle escaping escapes
local STRING_INCOMP_A = "(['\"]).-\n" --Incompleted String with next line
local STRING_INCOMP_B = "(['\"])[^\n]*" --Incompleted String without next line
local STRING_MULTI = "%[(=*)%[.-%]%1%]" --Multiline-String
local STRING_MULTI_INCOMP = "%[=*%[.-.*" --Incompleted Multiline-String
local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]" --Completed Multiline-Comment
local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*" --Incompleted Multiline-Comment
local COMMENT_PLAIN = "%-%-.-\n" --Completed Singleline-Comment
local COMMENT_INCOMP = "%-%-.*" --Incompleted Singleline-Comment
-- local TYPED_VAR = ":%s*([%w%?%| \t]+%s*)" --Typed variable, parameter, function

local lang = require(script.language)
local lua_keyword = lang.keyword
local lua_builtin = lang.builtin
local lua_libraries = lang.libraries

local lua_matches = {
	-- Indentifiers
	{ Prefix .. IDEN .. Suffix, "var" },

	-- Numbers
	{ Prefix .. NUMBER_A .. Suffix, "number" },
	{ Prefix .. NUMBER_B .. Suffix, "number" },
	{ Prefix .. NUMBER_C .. Suffix, "number" },

	-- Strings
	{ Prefix .. STRING_EMPTY .. Suffix, "string" },
	{ Prefix .. STRING_PLAIN .. Suffix, "string" },
	{ Prefix .. STRING_INCOMP_A .. Suffix, "string" },
	{ Prefix .. STRING_INCOMP_B .. Suffix, "string" },
	{ Prefix .. STRING_MULTI .. Suffix, "string" },
	{ Prefix .. STRING_MULTI_INCOMP .. Suffix, "string" },

	-- Comments
	{ Prefix .. COMMENT_MULTI .. Suffix, "comment" },
	{ Prefix .. COMMENT_MULTI_INCOMP .. Suffix, "comment" },
	{ Prefix .. COMMENT_PLAIN .. Suffix, "comment" },
	{ Prefix .. COMMENT_INCOMP .. Suffix, "comment" },

	-- Operators
	{ Prefix .. OPERATORS .. Suffix, "operator" },
	{ Prefix .. BRACKETS .. Suffix, "operator" },

	-- Unicode
	{ Prefix .. UNICODE .. Suffix, "iden" },

	-- Unknown
	{ "^.", "iden" },
}

--- Create a plain token iterator from a string.
-- @tparam string s a string.

function lexer.scan(s)
	-- local startTime = os.clock()
	lexer.finished = false

	local index = 1
	local sz = #s
	local p1, p2, p3, pT = "", "", "", ""

	return function()
		if index <= sz then
			for _, m in ipairs(lua_matches) do
				local i1, i2 = string.find(s, m[1], index)
				if i1 then
					local tok = string.sub(s, i1, i2)
					index = i2 + 1
					lexer.finished = index > sz
					--if lexer.finished then
					--	print((os.clock()-startTime)*1000, "ms")
					--end

					local t = m[2]
					local t2 = t

					-- Process t into t2
					if t == "var" then
						-- Since we merge spaces into the tok, we need to remove them
						-- in order to check the actual word it contains
						local cleanTok = string.gsub(tok, Cleaner, "")

						if lua_keyword[cleanTok] then
							t2 = "keyword"
						elseif lua_builtin[cleanTok] then
							t2 = "builtin"
						else
							t2 = "iden"
						end

						if string.find(p1, "%.[%s%c]*$") and pT ~= "comment" then
							-- The previous was a . so we need to special case indexing things
							local parent = string.gsub(p2, Cleaner, "")
							local lib = lua_libraries[parent]
							if lib and lib[cleanTok] and not string.find(p3, "%.[%s%c]*$") then
								-- Indexing a builtin lib with existing item, treat as a builtin
								t2 = "builtin"
							else
								-- Indexing a non builtin, can't be treated as a keyword/builtin
								t2 = "iden"
							end
							-- print("indexing",parent,"with",cleanTok,"as",t2)
						end
					end

					-- Record last 3 tokens for the indexing context check
					p3 = p2
					p2 = p1
					p1 = tok
					pT = t2
					return t2, tok
				end
			end
		end
	end
end

function lexer.navigator()
	local nav = {
		Source = "",
		TokenCache = table.create(50),

		_RealIndex = 0,
		_UserIndex = 0,
		_ScanThread = nil,
	}

	function nav:Destroy()
		self.Source = nil
		self._RealIndex = nil
		self._UserIndex = nil
		self.TokenCache = nil
		self._ScanThread = nil
	end

	function nav:SetSource(SourceString)
		self.Source = SourceString

		self._RealIndex = 0
		self._UserIndex = 0
		table.clear(self.TokenCache)

		self._ScanThread = coroutine.create(function()
			for Token, Src in lexer.scan(self.Source) do
				self._RealIndex += 1
				self.TokenCache[self._RealIndex] = { Token, Src }
				coroutine.yield(Token, Src)
			end
		end)
	end

	function nav.Next()
		nav._UserIndex += 1

		if nav._RealIndex >= nav._UserIndex then
			-- Already scanned, return cached
			return table.unpack(nav.TokenCache[nav._UserIndex])
		else
			if coroutine.status(nav._ScanThread) == "dead" then
				-- Scan thread dead
				return
			else
				local success, token, src = coroutine.resume(nav._ScanThread)
				if success and token then
					-- Scanned new data
					return token, src
				else
					-- Lex completed
					return
				end
			end
		end
	end

	function nav.Peek(PeekAmount)
		local GoalIndex = nav._UserIndex + PeekAmount

		if nav._RealIndex >= GoalIndex then
			-- Already scanned, return cached
			if GoalIndex > 0 then
				return table.unpack(nav.TokenCache[GoalIndex])
			else
				-- Invalid peek
				return
			end
		else
			if coroutine.status(nav._ScanThread) == "dead" then
				-- Scan thread dead
				return
			else
				local IterationsAway = GoalIndex - nav._RealIndex

				local success, token, src = nil, nil, nil

				for _ = 1, IterationsAway do
					success, token, src = coroutine.resume(nav._ScanThread)
					if not (success or token) then
						-- Lex completed
						break
					end
				end

				return token, src
			end
		end
	end

	return nav
end

return lexer
end;
};
G2L_MODULES[G2L["be"]] = {
Closure = function()
    local script = G2L["be"];return {
	keyword = {
		["and"] = true,
		["break"] = true,
		["do"] = true,
		["else"] = true,
		["elseif"] = true,
		["end"] = true,
		["false"] = true,
		["for"] = true,
		["function"] = true,
		["if"] = true,
		["in"] = true,
		["local"] = true,
		["nil"] = true,
		["not"] = true,
		["while"] = true,
		["or"] = true,
		["repeat"] = true,
		["return"] = true,
		["then"] = true,
		["true"] = true,
		["self"] = true,
		["until"] = true,
		["continue"] = true,
		["export"] = true,
	},

	builtin = {
		-- Lua Functions
		["assert"] = true,
		["collectgarbage"] = true,
		["error"] = true,
		["getfenv"] = true,
		["getmetatable"] = true,
		["ipairs"] = true,
		["loadstring"] = true,
		["newproxy"] = true,
		["next"] = true,
		["pairs"] = true,
		["pcall"] = true,
		["print"] = true,
		["rawequal"] = true,
		["rawget"] = true,
		["rawset"] = true,
		["select"] = true,
		["setfenv"] = true,
		["setmetatable"] = true,
		["tonumber"] = true,
		["tostring"] = true,
		["type"] = true,
		["unpack"] = true,
		["xpcall"] = true,

		-- Lua Variables
		["_G"] = true,
		["_VERSION"] = true,

		-- Lua Tables
		["bit32"] = true,
		["coroutine"] = true,
		["debug"] = true,
		["math"] = true,
		["os"] = true,
		["string"] = true,
		["table"] = true,
		["utf8"] = true,

		-- Roblox Functions
		["delay"] = true,
		["elapsedTime"] = true,
		["gcinfo"] = true,
		["require"] = true,
		["settings"] = true,
		["spawn"] = true,
		["tick"] = true,
		["time"] = true,
		["typeof"] = true,
		["UserSettings"] = true,
		["wait"] = true,
		["warn"] = true,
		["ypcall"] = true,

		-- Roblox Variables
		["Enum"] = true,
		["game"] = true,
		["shared"] = true,
		["script"] = true,
		["workspace"] = true,
		["plugin"] = true,

		-- Roblox Tables
		["Axes"] = true,
		["BrickColor"] = true,
		["CatalogSearchParams"] = true,
		["CellId"] = true,
		["CFrame"] = true,
		["Color3"] = true,
		["ColorSequence"] = true,
		["ColorSequenceKeypoint"] = true,
		["DateTime"] = true,
		["DockWidgetPluginGuiInfo"] = true,
		["Faces"] = true,
		["File"] = true,
		["FloatCurveKey"] = true,
		["Instance"] = true,
		["NumberRange"] = true,
		["NumberSequence"] = true,
		["NumberSequenceKeypoint"] = true,
		["OverlapParams"] = true,
		["PathWaypoint"] = true,
		["PhysicalProperties"] = true,
		["PluginDrag"] = true,
		["Random"] = true,
		["Ray"] = true,
		["RaycastParams"] = true,
		["Rect"] = true,
		["Region3"] = true,
		["Region3int16"] = true,
		["RotationCurveKey"] = true,
		["task"] = true,
		["TextChatMessageProperties"] = true,
		["TweenInfo"] = true,
		["UDim"] = true,
		["UDim2"] = true,
		["Vector2"] = true,
		["Vector2int16"] = true,
		["Vector3"] = true,
		["Vector3int16"] = true,
	},

	libraries = {

		-- Lua Libraries
		math = {
			abs = true,
			acos = true,
			asin = true,
			atan = true,
			atan2 = true,
			ceil = true,
			clamp = true,
			cos = true,
			cosh = true,
			deg = true,
			exp = true,
			floor = true,
			fmod = true,
			frexp = true,
			ldexp = true,
			log = true,
			log10 = true,
			max = true,
			min = true,
			modf = true,
			noise = true,
			pow = true,
			rad = true,
			random = true,
			round = true,
			sinh = true,
			sqrt = true,
			tan = true,
			tanh = true,
			sign = true,
			sin = true,
			randomseed = true,

			huge = true,
			pi = true,
		},

		string = {
			byte = true,
			char = true,
			find = true,
			format = true,
			gmatch = true,
			gsub = true,
			len = true,
			lower = true,
			match = true,
			pack = true,
			packsize = true,
			rep = true,
			reverse = true,
			split = true,
			sub = true,
			unpack = true,
			upper = true,
		},

		table = {
			clear = true,
			concat = true,
			foreach = true,
			foreachi = true,
			freeze = true,
			getn = true,
			insert = true,
			isfrozen = true,
			maxn = true,
			remove = true,
			sort = true,
			find = true,
			pack = true,
			unpack = true,
			move = true,
			create = true,
		},

		debug = {
			dumpheap = true,
			info = true,
			profilebegin = true,
			profileend = true,
			resetmemorycategory = true,
			setmemorycategory = true,
			traceback = true,
		},

		os = {
			time = true,
			date = true,
			difftime = true,
			clock = true,
		},

		coroutine = {
			create = true,
			isyieldable = true,
			resume = true,
			running = true,
			status = true,
			wrap = true,
			yield = true,
		},

		bit32 = {
			arshift = true,
			band = true,
			bnot = true,
			bor = true,
			btest = true,
			bxor = true,
			countlz = true,
			countrz = true,
			extract = true,
			lrotate = true,
			lshift = true,
			replace = true,
			rrotate = true,
			rshift = true,
		},

		utf8 = {
			char = true,
			codepoint = true,
			codes = true,
			graphemes = true,
			len = true,
			nfcnormalize = true,
			nfdnormalize = true,
			offset = true,

			charpattern = true,
		},

		-- Roblox Libraries
		Axes = {
			new = true,
		},

		BrickColor = {
			new = true,
			New = true,
			Random = true,
			Black = true,
			Blue = true,
			DarkGray = true,
			Gray = true,
			Green = true,
			Red = true,
			White = true,
			Yellow = true,
			palette = true,
			random = true,
		},

		CatalogSearchParams = {
			new = true,
		},

		CellId = {
			new = true,
		},

		CFrame = {
			new = true,
			Angles = true,
			fromAxisAngle = true,
			fromEulerAnglesXYZ = true,
			fromEulerAnglesYXZ = true,
			fromMatrix = true,
			fromOrientation = true,
			lookAt = true,

			identity = true,
		},

		Color3 = {
			new = true,
			fromRGB = true,
			fromHSV = true,
			fromHex = true,
			toHSV = true,
		},

		ColorSequence = {
			new = true,
		},

		ColorSequenceKeypoint = {
			new = true,
		},

		DateTime = {
			now = true,
			fromIsoDate = true,
			fromLocalTime = true,
			fromUniversalTime = true,
			fromUnixTimestamp = true,
			fromUnixTimestampMillis = true,
		},

		DockWidgetPluginGuiInfo = {
			new = true,
		},

		Faces = {
			new = true,
		},

		FloatCurveKey = {
			new = true,
		},

		Instance = {
			new = true,
		},

		NumberRange = {
			new = true,
		},

		NumberSequence = {
			new = true,
		},

		NumberSequenceKeypoint = {
			new = true,
		},

		OverlapParams = {
			new = true,
		},

		PathWaypoint = {
			new = true,
		},

		PhysicalProperties = {
			new = true,
		},

		PluginDrag = {
			new = true,
		},

		Random = {
			new = true,
		},

		Ray = {
			new = true,
		},

		RaycastParams = {
			new = true,
		},

		Rect = {
			new = true,
		},

		Region3 = {
			new = true,
		},

		Region3int16 = {
			new = true,
		},

		RotationCurveKey = {
			new = true,
		},

		task = {
			wait = true,
			spawn = true,
			delay = true,
			defer = true,
			synchronize = true,
			desynchronize = true,
		},

		TweenInfo = {
			new = true,
		},

		UDim = {
			new = true,
		},

		UDim2 = {
			new = true,
			fromScale = true,
			fromOffset = true,
		},

		Vector2 = {
			new = true,

			one = true,
			zero = true,
			xAxis = true,
			yAxis = true,
		},

		Vector2int16 = {
			new = true,
		},

		Vector3 = {
			new = true,
			fromAxis = true,
			fromNormalId = true,
			FromAxis = true,
			FromNormalId = true,

			one = true,
			zero = true,
			xAxis = true,
			yAxis = true,
			zAxis = true,
		},

		Vector3int16 = {
			new = true,
		},
	},
}

end;
};
G2L_MODULES[G2L["f5"]] = {
Closure = function()
    local script = G2L["f5"];-- LuaEncode - Optimal Table Serialization for Native Luau/Lua 5.1+
-- Copyright (c) 2022-2023 Reggie <reggie@latte.to> | MIT License
-- https://github.com/regginator/LuaEncode

--!nocheck
--!optimize 2

-- Localizing certain libraries/variables used throughout for runtime efficiency (not specific to Luau)
local table, ipairs, string, next, pcall, game, workspace, tostring, tonumber, getmetatable = table, ipairs, string, next, pcall, game, workspace, tostring, tonumber, getmetatable

local string_format = string.format
local string_char = string.char
local string_gsub = string.gsub
local string_match = string.match
local string_rep = string.rep
local string_sub = string.sub
local string_gmatch = string.gmatch

local table_find = table.find
local table_concat = table.concat
local table_insert = table.insert

-- For custom Roblox engine data-type support via `typeof`, if it exists
local Type = typeof or type

-- Used for checking direct getfield syntax; Lua keywords can't be used as keys without being a str
-- FYI; `continue` is Luau only (in Lua it's actually a global function), but we're including it
-- here anyway to be safe
local LuaKeywords do
	local LuaKeywordsArray = {
		"and", "break", "do", "else",
		"elseif", "end", "false", "for",
		"function", "if", "in", "local",
		"nil", "not", "or", "repeat",
		"return", "then", "true", "until",
		"while", "continue"
	}

	-- We're now setting each keyword str to a weak key, so it's faster at runtime for `SerializeString()`
	LuaKeywords = setmetatable({}, {__mode = "k"})

	for _, Keyword in next, LuaKeywordsArray do
		LuaKeywords[Keyword] = true
	end
end

-- Lua 5.1 doesn't have table.find
table_find = table_find or function(inputTable, valueToFind) -- Ignoring the `init` arg, unneeded for us
	for Key, Value in ipairs(inputTable) do
		if Value == valueToFind then
			return Key -- Return the key idx
		end
	end

	return
end

-- Simple function for directly checking the type on values, with their input, variable name,
-- and desired type name(s) to check
local function CheckType(inputData, dataName, ...)
	local DesiredTypes = {...}
	local InputDataType = Type(inputData)

	if not table_find(DesiredTypes, InputDataType) then
		error(string_format(
			"LuaEncode: Incorrect type for `%s`: `%s` expected, got `%s`",
			dataName,
			table_concat(DesiredTypes, ", "), -- For if multiple types are accepted
			InputDataType
			), 0)
	end

	return inputData -- Return back input directly
end

-- This re-serializes a string back into Lua, for the interpreter AND humans to read. This fixes
-- `string_format("%q")` only outputting in system encoding, instead of explicit Lua byte escapes
local SerializeString do
	-- These are control characters to be encoded in a certain way in Lua rather than just a byte
	-- escape (e.g. "\n" -> "\10")
	local SpecialCharacters = {
		["\""] = "\\\"", -- Double-Quote
		["\\"] = "\\\\", -- (Literal) Backslash
		-- Special ASCII control char codes
		["\a"] = "\\a", -- Bell; ASCII #7
		["\b"] = "\\b", -- Backspace; ASCII #8
		["\t"] = "\\t", -- Horizontal-Tab; ASCII #9
		["\n"] = "\\n", -- Newline; ASCII #10
		["\v"] = "\\v", -- Vertical-Tab; ASCII #11
		["\f"] = "\\f", -- Form-Feed; ASCII #12
		["\r"] = "\\r", -- Carriage-Return; ASCII #13
	}

	-- We need to assign all extra normal byte escapes for runtime optimization
	for Index = 0, 255 do
		local Character = string_char(Index)

		if not SpecialCharacters[Character] and (Index < 32 or Index > 126) then
			SpecialCharacters[Character] = "\\" .. Index
		end
	end

	function SerializeString(inputString)
		-- FYI; We can't do "\0-\31" in Lua 5.1 (Only Luau/Lua 5.2+) due to an embedded zeros in pattern
		-- issue. See: https://stackoverflow.com/a/22962409
		return "\"" .. string_gsub(inputString, "[%z\\\"\1-\31\127-\255]", SpecialCharacters) .. "\""
	end
end

-- We need to occasionally construct valid comment blocks from external input, with proper escapes etc
local function CommentBlock(inputString)
	local Padding = ""
	for Match in string_gmatch(inputString, "%](=*)%]") do
		if #Match >= #Padding then
			Padding = Match .. "="
		end
	end

	return "--[" .. Padding .. "[" .. inputString .. "]" .. Padding .. "]"
end

local EvaluateInstancePath do
	-- VERY simple function to get if an object is a service, used in instance path eval
	local function IsService(object)
		-- Logically, if an object is actually under a service, that service *has* to already exist, as we've
		-- presumably evaluated to said path
		local FindServiceSuccess, ServiceObject = pcall(game.FindService, game, object.ClassName)

		if FindServiceSuccess and ServiceObject then
			return true
		end

		return false
	end

	-- Evaluating an instances' accessable "path" with just it's ref, and if the root parent is nil/isn't
	-- under `game` or `workspace`, returns nil.
	function EvaluateInstancePath(object)
		-- "Recursive" eval
		local ObjectPointer = object

		-- Input itself doesn't exist?
		if not ObjectPointer then
			return
		end

		local Path = ""

		while ObjectPointer do
			local ObjectName = ObjectPointer.Name
			local ObjectClassName = ObjectPointer.ClassName
			local ObjectParent = ObjectPointer.Parent

			if ObjectPointer == game:GetService("Players").LocalPlayer.Character then
				return 'game:GetService("Players").LocalPlayer.Character'..Path
			elseif ObjectPointer == game:GetService("Players").LocalPlayer then
				Path = ".LocalPlayer"..Path
			elseif ObjectParent == game and IsService(ObjectPointer) then
				-- ^^ Then we'll use GetService directly, since it's actually a service under the DataModel

				Path = ":GetService(" .. SerializeString(ObjectClassName) .. ")" .. Path
			elseif not LuaKeywords[ObjectName] and string_match(ObjectName, "^[A-Za-z_][A-Za-z0-9_]*$") then
				-- ^^ Like the `string` DataType, this means means we can index the name directly in Lua
				-- without an explicit string
				Path = "." .. ObjectName .. Path
			else
				Path = "[" .. SerializeString(ObjectName) .. "]" .. Path
			end

			if ObjectParent == game then
				Path = "game" .. Path
				return Path
			elseif ObjectParent == workspace then
				Path = "workspace" .. Path
				return Path
			end

			-- Advance ObjectPointer, whether it exists or not (JUMPBACK)
			ObjectPointer = ObjectParent
		end

		-- Fall back to no ret.. Only objects parented under game/workspace will be serialized
		return
	end
end

--[[
LuaEncode(inputTable: {[any]: any}, options: {[string]:any}): string

    ---------- OPTIONS: ----------

    Prettify <boolean?:false> | Whether or not the output should use pretty printing.

    IndentCount <number?:0> | The amount of "spaces" that should be indented per entry. (*Note:
    If `Prettify` is set to true and this is unspecified, it'll be set to `4` automatically.*)

    OutputWarnings <boolean?:true> | If "warnings" should be placed to the output (as
    comments); It's recommended to keep this enabled, however this can be disabled at ease.

    StackLimit <number?:500> | The limit to the stack level before recursive encoding cuts
    off, and stops execution. This is used to prevent stack overflow errors and such. You
    could use `math.huge` here if you really wanted.

    FunctionsReturnRaw <boolean?:false> | If functions in said table return back a "raw"
    value to place in the output as the key/value.

    UseInstancePaths <boolean?:true> | If `Instance` reference objects should return their
    Lua-accessable path for encoding. If the instance is parented under `nil` or isn't under
    `game`/`workspace`, it'll always fall back to `Instance.new(ClassName)` as before.

    SerializeMathHuge <boolean?:true> | If numbers calculated as "infinite" (or negative-inf)
    numbers should be serialized with "math.huge". (uses the `math` import, as opposed to just
    a direct data type) If false, "`1/0`" or "`-1/0`" will be serialized, which is supported
    on all target versions.

]]

local function LuaEncode(inputTable, options)
	-- Check all arg and option types
	CheckType(options, "options", "table", "nil") -- `options` is an optional arg

	-- Options
	if options then
		CheckType(options.Prettify, "options.Prettify", "boolean", "nil")
		CheckType(options.PrettyPrinting, "options.PrettyPrinting", "boolean", "nil") -- Alias for `Options.Prettify`
		CheckType(options.IndentCount, "options.IndentCount", "number", "nil")
		CheckType(options.OutputWarnings, "options.OutputWarnings", "boolean", "nil")
		CheckType(options.StackLimit, "options.StackLimit", "number", "nil")
		CheckType(options.FunctionsReturnRaw, "options.FunctionsReturnRaw", "boolean", "nil")
		CheckType(options.UseInstancePaths, "options.UseInstancePaths", "boolean", "nil")
		CheckType(options.SerializeMathHuge, "options.SerializeMathHuge", "boolean", "nil")

		-- Internal options:
		CheckType(options._StackLevel, "options._StackLevel", "number", "nil")
		CheckType(options._VisitedTables, "options._StackLevel", "table", "nil")
	end

	options = options or {}

	-- Because no if-else-then exp. in Lua 5.1+ (only Luau), for optional boolean values we need to check
	-- if it's nil first, THEN fall back to whatever it's actually set to if it's not nil
	local Prettify = (options.Prettify == nil and options.PrettyPrinting == nil and false) or (options.Prettify ~= nil and options.Prettify) or (options.PrettyPrinting and options.PrettyPrinting)
	local IndentCount = options.IndentCount or (Prettify and 4) or 0
	local OutputWarnings = (options.OutputWarnings == nil and true) or options.OutputWarnings
	local StackLimit = options.StackLimit or 500
	local FunctionsReturnRaw = (options.FunctionsReturnRaw == nil and false) or options.FunctionsReturnRaw
	local UseInstancePaths = (options.UseInstancePaths == nil and true) or options.UseInstancePaths
	local SerializeMathHuge = (options.SerializeMathHuge == nil and true) or options.SerializeMathHuge

	-- Internal options:

	-- Internal stack level for depth checks and indenting
	local StackLevel = options._StackLevel or 1
	-- Set root as visited; cyclic detection
	local VisitedTables = options._VisitedTables or {[inputTable] = true} -- [`visitedTable <table>`] = `isVisited <boolean>`

	-- Stack overflow/output abuse etc; default StackLimit is 500
	if StackLevel >= StackLimit then
		return "{--[[LuaEncode: Stack level limit of `" .. StackLimit .. "` reached]]}"
	end

	-- For +/- inf num serialization
	local PositiveInf = (SerializeMathHuge and "math.huge") or "1/0"
	local NegativeInf = (SerializeMathHuge and "-math.huge") or "-1/0"

	-- Easy-to-reference values for specific args
	local NewEntryString = (Prettify and "\n") or ""
	local ValueSeperator = (Prettify and ", ") or ","
	local BlankSeperator = (Prettify and " ") or ""

	-- For pretty printing (which is optional, and false by default) we need to keep track
	-- of the current stack, then repeat IndentString by that count
	local IndentString = string_rep(" ", IndentCount) -- If 0 this will just be ""
	IndentString = (Prettify and string_rep(IndentString, StackLevel)) or IndentString

	local EndingIndentString = (#IndentString > 0 and string_sub(IndentString, 1, -IndentCount - 1)) or ""

	-- For number key values, incrementing the current internal index
	local KeyIndex = 1

	-- Cases (C-Like) for encoding values, then end setup. Using cases so no elseif bs!
	-- Functions are all expected to return a (<string> EncodedKey, <boolean?> EncloseInBrackets)
	local TypeCases = {} do
		-- Basic func for getting the direct value of an encoded type without weird table.pack()[1] syntax
		local function TypeCase(typeName, value)
			-- Each of these funcs return a tuple, so it'd be annoying to do case-by-case
			local EncodedValue = TypeCases[typeName](value, false) -- False to label as NOT `isKey`
			return EncodedValue
		end

		-- For "tuple" args specifically, so there isn't a bunch of re-used code
		local function Args(...)
			local EncodedValues = {}

			for _, Arg in next, {...} do
				table_insert(EncodedValues, TypeCase(
					Type(Arg),
					Arg
					))
			end

			return table_concat(EncodedValues, ValueSeperator)
		end

		-- For certain Roblox DataTypes, we use a custom serialization method for filling out params etc
		local function Params(newData, params)
			return "(function(v, p) for pn, pv in next, p do v[pn] = pv end return v end)(" ..
				table_concat({newData, TypeCase("table", params)}, ValueSeperator) ..
				")"
		end

		TypeCases["number"] = function(value, isKey)
			-- If the number isn't the current real index of the table, we DO want to
			-- explicitly define it in the serialization no matter what for accuracy
			if isKey and value == KeyIndex then
				-- ^^ What's EXPECTED unless otherwise explicitly defined, if so, return no encoded num
				KeyIndex = KeyIndex + 1
				return nil, true
			end

			-- Lua's internal `tostring` handling will denote positive/negativie-infinite number TValues as "inf", which
			-- makes certain numbers not encode properly. We also just want to make the output precise
			if value == 1/0 then
				return PositiveInf
			elseif value == -1/0 then
				return NegativeInf
			end

			-- Return fixed-formatted precision num
			return string_format("%.14g", value)
		end

		TypeCases["string"] = function(value, isKey)
			if isKey and not LuaKeywords[value] and string_match(value, "^[A-Za-z_][A-Za-z0-9_]*$") then
				-- ^^ Then it's a syntaxically-correct variable, doesn't need explicit string def
				return value, true
			end

			return SerializeString(value)
		end

		TypeCases["table"] = function(value, isKey)
			-- Check duplicate/cyclic references
			do
				local VisitedTable = VisitedTables[value]
				if VisitedTable then
					return string_format(
						"{--[[LuaEncode: Duplicate reference%s]]}",
						(value == inputTable and " (of parent)") or ""
					)
				end

				VisitedTables[value] = true
			end

			-- *Point index not set by NewOptions to original
			local NewOptions = setmetatable({}, {__index = options}) do
				-- Overriding if key because it'd look worse pretty printed in a key
				NewOptions.Prettify = (isKey and false) or Prettify

				-- If Prettify is already false in the real args, set the indent to whatever
				-- the REAL IndentCount is set to
				NewOptions.IndentCount = (isKey and ((not Prettify and IndentCount) or 1)) or IndentCount

				-- Internal options
				NewOptions._StackLevel = (isKey and 1) or StackLevel + 1 -- If isKey, stack lvl is set to the **LOWEST** because it's the key to a value
				NewOptions._VisitedTables = VisitedTables
			end

			return LuaEncode(value, NewOptions)
		end

		TypeCases["boolean"] = function(value)
			return value and "true" or "false"
		end

		TypeCases["nil"] = function(value)
			return "nil"
		end

		TypeCases["function"] = function(value)
			-- If `FunctionsReturnRaw` is set as true, we'll call the function here itself, expecting
			-- a raw value for FunctionsReturnRaw to add as the key/value, you may want to do this for custom userdata or
			-- function closures. Thank's for listening to my Ted Talk!
			if FunctionsReturnRaw then
				return value()
			end

			-- If all else, force key func to return nil; can't handle a func val..
			return "function() --[[LuaEncode: `options.FunctionsReturnRaw` false; can't serialize functions]] return end"
		end

		---------- ROBLOX CUSTOM DATATYPES BELOW ----------

		TypeCases["Axes"] = function(value)
			local EncodedArgs = {}
			local EnumValues = {
				["Enum.Axis.X"] = value.X,
				["Enum.Axis.Y"] = value.Y,
				["Enum.Axis.Z"] = value.Z,
			}

			for EnumValue, IsEnabled in next, EnumValues do
				if IsEnabled then
					table_insert(EncodedArgs, EnumValue)
				end
			end

			return "Axes.new(" .. table_concat(EncodedArgs, ValueSeperator) .. ")"
		end

		TypeCases["BrickColor"] = function(value)
			-- BrickColor.Number (Its enum ID) will be slightly more efficient in all cases in deser,
			-- so we'll use it if Options.Prettify is false
			return "BrickColor.new(" ..
				(Prettify and TypeCase("string", value.Name)) or value.Number ..
				")"
		end

		TypeCases["CFrame"] = function(value)
			return "CFrame.new(" .. Args(value:components()) .. ")"
		end

		TypeCases["CatalogSearchParams"] = function(value)
			return Params("CatalogSearchParams.new()", {
				SearchKeyword = value.SearchKeyword,
				MinPrice = value.MinPrice,
				MaxPrice = value.MaxPrice,
				SortType = value.SortType, -- EnumItem
				CategoryFilter = value.CategoryFilter, -- EnumItem
				BundleTypes = value.BundleTypes, -- table
				AssetTypes = value.AssetTypes -- table
			})
		end

		TypeCases["Color3"] = function(value)
			-- Using floats for RGB values, most accurate for direct serialization
			return "Color3.new(" .. Args(value.R, value.G, value.B)
		end

		TypeCases["ColorSequence"] = function(value)
			return "ColorSequence.new(" .. TypeCase("table", value.Keypoints) .. ")"
		end

		TypeCases["ColorSequenceKeypoint"] = function(value)
			return "ColorSequenceKeypoint.new(" .. Args(value.Time, value.Value) .. ")"
		end

		-- We're using fromUnixTimestamp to serialize the object
		TypeCases["DateTime"] = function(value)
			-- Always an int, we don't need to do anything special
			return "DateTime.fromUnixTimestamp(" .. value.UnixTimestamp .. ")"
		end

		-- Properties seem to throw an error on index if the scope isn't a Studio plugin, so we're
		-- directly getting values! (so fun!!!!)
		TypeCases["DockWidgetPluginGuiInfo"] = function(value)
			-- e.g.: "InitialDockState:Right InitialEnabled:0 InitialEnabledShouldOverrideRestore:0 FloatingXSize:0 FloatingYSize:0 MinWidth:0 MinHeight:0"
			local ValueString = tostring(value)

			return "DockWidgetPluginGuiInfo.new(" ..
				Args(
					-- InitialDockState (Enum.InitialDockState)
					Enum.InitialDockState[string_match(ValueString, "InitialDockState:(%w+)")], -- Enum.InitialDockState.Right
					-- InitialEnabled and InitialEnabledShouldOverrideRestore (boolean as number; `0` or `1`)
					string_match(ValueString, "InitialEnabled:(%w+)") == "1", -- false
					string_match(ValueString, "InitialEnabledShouldOverrideRestore:(%w+)") == "1", -- false
					-- FloatingXSize/FloatingYSize (numbers)
					tonumber(string_match(ValueString, "FloatingXSize:(%w+)")), -- 0
					tonumber(string_match(ValueString, "FloatingYSize:(%w+)")), -- 0
					-- MinWidth/MinHeight (numbers)
					tonumber(string_match(ValueString, "MinWidth:(%w+)")), -- 0
					tonumber(string_match(ValueString, "MinHeight:(%w+)")) -- 0
				) ..
				")"
		end

		-- e.g. `Enum.UserInputType`
		TypeCases["Enum"] = function(value)
			return "Enum." .. tostring(value) -- For now, this is the behavior of enums in tostring.. I have no other choice atm
		end

		-- e.g. `Enum.UserInputType.Gyro`
		TypeCases["EnumItem"] = function(value)
			return tostring(value) -- Returns the full enum index for now (e.g. "Enum.UserInputType.Gyro")
		end

		-- i.e. the `Enum` global return
		TypeCases["Enums"] = function(value)
			return "Enum"
		end

		TypeCases["Faces"] = function(value)
			local EncodedArgs = {}
			local EnumValues = {
				["Enum.NormalId.Top"] = value.Top, -- These return bools
				["Enum.NormalId.Bottom"] = value.Bottom,
				["Enum.NormalId.Left"] = value.Left,
				["Enum.NormalId.Right"] = value.Right,
				["Enum.NormalId.Back"] = value.Back,
				["Enum.NormalId.Front"] = value.Front,
			}

			for EnumValue, IsEnabled in next, EnumValues do
				if IsEnabled then
					table_insert(EncodedArgs, EnumValue)
				end
			end

			return "Faces.new(" .. table_concat(EncodedArgs, ValueSeperator) .. ")"
		end

		TypeCases["FloatCurveKey"] = function(value)
			return "FloatCurveKey.new(" .. Args(value.Time, value.Value, value.Interpolation) .. ")"
		end

		TypeCases["Font"] = function(value)
			return "Font.new(" .. Args(value.Family, value.Weight, value.Style) .. ")"
		end

		-- Instance refs can be evaluated to their paths (optional), but if parented to
		-- nil or some DataModel not under `game`, it'll just return nil
		TypeCases["Instance"] = function(value)
			if UseInstancePaths then
				local InstancePath = EvaluateInstancePath(value)
				if InstancePath then
					return InstancePath
				end

				-- ^^ Now, if the path isn't accessable, falls back to the return below anyway
			end

			return "nil" .. BlankSeperator .. CommentBlock("Instance.new(" .. TypeCase("string", value.ClassName) .. ")")
		end

		TypeCases["NumberRange"] = function(value)
			return "NumberRange.new(" .. Args(value.Min, value.Max) .. ")"
		end

		TypeCases["NumberSequence"] = function(value)
			return "NumberSequence.new(" .. TypeCase("table", value.Keypoints) .. ")"
		end

		TypeCases["NumberSequenceKeypoint"] = function(value)
			return "NumberSequenceKeypoint.new(" .. Args(value.Time, value.Value, value.Envelope) .. ")"
		end

		TypeCases["OverlapParams"] = function(value)
			return Params("OverlapParams.new()", {
				FilterDescendantsInstances = value.FilterDescendantsInstances,
				FilterType = value.FilterType,
				MaxParts = value.MaxParts,
				CollisionGroup = value.CollisionGroup,
				RespectCanCollide = value.RespectCanCollide
			})
		end

		TypeCases["PathWaypoint"] = function(value)
			return "PathWaypoint.new(" .. Args(value.Position, value.Action, value.Label) .. ")"
		end

		TypeCases["PhysicalProperties"] = function(value)
			return "PhysicalProperties.new(" ..
				Args(
					value.Density,
					value.Friction,
					value.Elasticity,
					value.FrictionWeight,
					value.ElasticityWeight
				) ..
				")"
		end

		TypeCases["Random"] = function()
			return "Random.new()"
		end

		TypeCases["Ray"] = function(value)
			return "Ray.new(" .. Args(value.Origin, value.Direction) .. ")"
		end

		TypeCases["RaycastParams"] = function(value)
			return Params("RaycastParams.new()", {
				FilterDescendantsInstances = value.FilterDescendantsInstances,
				FilterType = value.FilterType,
				IgnoreWater = value.IgnoreWater,
				CollisionGroup = value.CollisionGroup,
				RespectCanCollide = value.RespectCanCollide
			})
		end

		TypeCases["Rect"] = function(value)
			return "Rect.new(" .. Args(value.Min, value.Max) .. ")"
		end

		-- Roblox doesn't provide read properties for min/max on `Region3`, but they do on Region3int16.. Anyway,
		-- we CAN calculate the min/max of a Region3 from just .CFrame and .Size.. Thanks to wally for linking me
		-- the thread for this method lol
		TypeCases["Region3"] = function(value)
			local ValueCFrame = value.CFrame
			local ValueSize = value.Size

			return "Region3.new(" ..
				Args(
					ValueCFrame * CFrame.new(-ValueSize / 2), -- Minimum
					ValueCFrame * CFrame.new(ValueSize / 2) -- Maximum
				) ..
				")"
		end

		TypeCases["Region3int16"] = function(value)
			return "Region3int16.new(" .. Args(value.Min, value.Max) .. ")"
		end

		TypeCases["TweenInfo"] = function(value)
			return "TweenInfo.new(" ..
				Args(
					value.Time,
					value.EasingStyle,
					value.EasingDirection,
					value.RepeatCount,
					value.Reverses,
					value.DelayTime
				) ..
				")"
		end

		-- CURRENTLY UNDOCUMENTED*
		TypeCases["RotationCurveKey"] = function(value)
			return "RotationCurveKey.new(" .. Args(value.Time, value.Value, value.Interpolation) .. ")"
		end

		TypeCases["UDim"] = function(value)
			return "UDim.new(" .. Args(value.Scale, value.Offset) .. ")"
		end

		TypeCases["UDim2"] = function(value)
			return "UDim2.new(" ..
				Args(
					-- Not directly using X and Y UDims for better output (i.e. would be
					-- UDim2.new(UDim.new(1, 0), UDim.new(1, 0)) if I did)
					value.X.Scale,
					value.X.Offset,
					value.Y.Scale,
					value.Y.Offset
				) ..
				")"
		end

		TypeCases["Vector2"] = function(value)
			return "Vector2.new(" .. Args(value.X, value.Y) .. ")"
		end

		TypeCases["Vector2int16"] = function(value)
			return "Vector2int16.new(" .. Args(value.X, value.Y) .. ")"
		end

		TypeCases["Vector3"] = function(value)
			return "Vector3.new(" .. Args(value.X, value.Y, value.Z) .. ")"
		end

		TypeCases["Vector3int16"] = function(value)
			return "Vector3int16.new(" .. Args(value.X, value.Y, value.Z) .. ")"
		end

		-- With userdata, just encode directly
		TypeCases["userdata"] = function(value)
			if getmetatable(value) then -- Has mt
				return "newproxy(true)"
			else
				return "newproxy()" -- newproxy() defaults to false (no mt)
			end
		end
	end

	-- Setup output tbl
		local ValueType = Type(inputTable)
			-- Ignoring 2nd arg (`DontEncloseInBrackets`) because this isn't the key
			local ValueEncodedSuccess, EncodedValueOrError = pcall(TypeCases[ValueType], inputTable, false) -- `false` because it's NOT the key, it's the value
		return EncodedValueOrError
end

return LuaEncode
end;
};
G2L_MODULES[G2L["f6"]] = {
Closure = function()
    local script = G2L["f6"];-- LuaEncode - Optimal Table Serialization for Native Luau/Lua 5.1+
-- Copyright (c) 2022-2023 Reggie <reggie@latte.to> | MIT License
-- https://github.com/regginator/LuaEncode

--!nocheck
--!optimize 2

-- Localizing certain libraries/variables used throughout for runtime efficiency (not specific to Luau)
local table, ipairs, string, next, pcall, game, workspace, tostring, tonumber, getmetatable = table, ipairs, string, next, pcall, game, workspace, tostring, tonumber, getmetatable

local string_format = string.format
local string_char = string.char
local string_gsub = string.gsub
local string_match = string.match
local string_rep = string.rep
local string_sub = string.sub
local string_gmatch = string.gmatch

local table_find = table.find
local table_concat = table.concat
local table_insert = table.insert

-- For custom Roblox engine data-type support via `typeof`, if it exists
local Type = typeof or type

-- Used for checking direct getfield syntax; Lua keywords can't be used as keys without being a str
-- FYI; `continue` is Luau only (in Lua it's actually a global function), but we're including it
-- here anyway to be safe
local LuaKeywords do
	local LuaKeywordsArray = {
		"and", "break", "do", "else",
		"elseif", "end", "false", "for",
		"function", "if", "in", "local",
		"nil", "not", "or", "repeat",
		"return", "then", "true", "until",
		"while", "continue"
	}

	-- We're now setting each keyword str to a weak key, so it's faster at runtime for `SerializeString()`
	LuaKeywords = setmetatable({}, {__mode = "k"})

	for _, Keyword in next, LuaKeywordsArray do
		LuaKeywords[Keyword] = true
	end
end

-- Lua 5.1 doesn't have table.find
table_find = table_find or function(inputTable, valueToFind) -- Ignoring the `init` arg, unneeded for us
	for Key, Value in ipairs(inputTable) do
		if Value == valueToFind then
			return Key -- Return the key idx
		end
	end

	return
end

-- Simple function for directly checking the type on values, with their input, variable name,
-- and desired type name(s) to check
local function CheckType(inputData, dataName, ...)
	local DesiredTypes = {...}
	local InputDataType = Type(inputData)

	if not table_find(DesiredTypes, InputDataType) then
		error(string_format(
			"LuaEncode: Incorrect type for `%s`: `%s` expected, got `%s`",
			dataName,
			table_concat(DesiredTypes, ", "), -- For if multiple types are accepted
			InputDataType
			), 0)
	end

	return inputData -- Return back input directly
end

-- This re-serializes a string back into Lua, for the interpreter AND humans to read. This fixes
-- `string_format("%q")` only outputting in system encoding, instead of explicit Lua byte escapes
local SerializeString do
	-- These are control characters to be encoded in a certain way in Lua rather than just a byte
	-- escape (e.g. "\n" -> "\10")
	local SpecialCharacters = {
		["\""] = "\\\"", -- Double-Quote
		["\\"] = "\\\\", -- (Literal) Backslash
		-- Special ASCII control char codes
		["\a"] = "\\a", -- Bell; ASCII #7
		["\b"] = "\\b", -- Backspace; ASCII #8
		["\t"] = "\\t", -- Horizontal-Tab; ASCII #9
		["\n"] = "\\n", -- Newline; ASCII #10
		["\v"] = "\\v", -- Vertical-Tab; ASCII #11
		["\f"] = "\\f", -- Form-Feed; ASCII #12
		["\r"] = "\\r", -- Carriage-Return; ASCII #13
	}

	-- We need to assign all extra normal byte escapes for runtime optimization
	for Index = 0, 255 do
		local Character = string_char(Index)

		if not SpecialCharacters[Character] and (Index < 32 or Index > 126) then
			SpecialCharacters[Character] = "\\" .. Index
		end
	end

	function SerializeString(inputString)
		-- FYI; We can't do "\0-\31" in Lua 5.1 (Only Luau/Lua 5.2+) due to an embedded zeros in pattern
		-- issue. See: https://stackoverflow.com/a/22962409
		return "\"" .. string_gsub(inputString, "[%z\\\"\1-\31\127-\255]", SpecialCharacters) .. "\""
	end
end

-- We need to occasionally construct valid comment blocks from external input, with proper escapes etc
local function CommentBlock(inputString)
	local Padding = ""
	for Match in string_gmatch(inputString, "%](=*)%]") do
		if #Match >= #Padding then
			Padding = Match .. "="
		end
	end

	return "--[" .. Padding .. "[" .. inputString .. "]" .. Padding .. "]"
end

local EvaluateInstancePath do
	-- VERY simple function to get if an object is a service, used in instance path eval
	local function IsService(object)
		-- Logically, if an object is actually under a service, that service *has* to already exist, as we've
		-- presumably evaluated to said path
		local FindServiceSuccess, ServiceObject = pcall(game.FindService, game, object.ClassName)

		if FindServiceSuccess and ServiceObject then
			return true
		end

		return false
	end

	-- Evaluating an instances' accessable "path" with just it's ref, and if the root parent is nil/isn't
	-- under `game` or `workspace`, returns nil.
	function EvaluateInstancePath(object)
		-- "Recursive" eval
		local ObjectPointer = object

		-- Input itself doesn't exist?
		if not ObjectPointer then
			return
		end

		local Path = ""

		while ObjectPointer do
			local ObjectName = ObjectPointer.Name
			local ObjectClassName = ObjectPointer.ClassName
			local ObjectParent = ObjectPointer.Parent

			if ObjectPointer == game:GetService("Players").LocalPlayer.Character then
				return 'game:GetService("Players").LocalPlayer.Character'..Path
			elseif ObjectPointer == game:GetService("Players").LocalPlayer then
				Path = ".LocalPlayer"..Path
			elseif ObjectParent == game and IsService(ObjectPointer) then
				-- ^^ Then we'll use GetService directly, since it's actually a service under the DataModel

				Path = ":GetService(" .. SerializeString(ObjectClassName) .. ")" .. Path
			elseif not LuaKeywords[ObjectName] and string_match(ObjectName, "^[A-Za-z_][A-Za-z0-9_]*$") then
				-- ^^ Like the `string` DataType, this means means we can index the name directly in Lua
				-- without an explicit string
				Path = "." .. ObjectName .. Path
			else
				Path = "[" .. SerializeString(ObjectName) .. "]" .. Path
			end

			if ObjectParent == game then
				Path = "game" .. Path
				return Path
			elseif ObjectParent == workspace then
				Path = "workspace" .. Path
				return Path
			end

			-- Advance ObjectPointer, whether it exists or not (JUMPBACK)
			ObjectPointer = ObjectParent
		end

		-- Fall back to no ret.. Only objects parented under game/workspace will be serialized
		return
	end
end

--[[
LuaEncode(inputTable: {[any]: any}, options: {[string]:any}): string

    ---------- OPTIONS: ----------

    Prettify <boolean?:false> | Whether or not the output should use pretty printing.

    IndentCount <number?:0> | The amount of "spaces" that should be indented per entry. (*Note:
    If `Prettify` is set to true and this is unspecified, it'll be set to `4` automatically.*)

    OutputWarnings <boolean?:true> | If "warnings" should be placed to the output (as
    comments); It's recommended to keep this enabled, however this can be disabled at ease.

    StackLimit <number?:500> | The limit to the stack level before recursive encoding cuts
    off, and stops execution. This is used to prevent stack overflow errors and such. You
    could use `math.huge` here if you really wanted.

    FunctionsReturnRaw <boolean?:false> | If functions in said table return back a "raw"
    value to place in the output as the key/value.

    UseInstancePaths <boolean?:true> | If `Instance` reference objects should return their
    Lua-accessable path for encoding. If the instance is parented under `nil` or isn't under
    `game`/`workspace`, it'll always fall back to `Instance.new(ClassName)` as before.

    SerializeMathHuge <boolean?:true> | If numbers calculated as "infinite" (or negative-inf)
    numbers should be serialized with "math.huge". (uses the `math` import, as opposed to just
    a direct data type) If false, "`1/0`" or "`-1/0`" will be serialized, which is supported
    on all target versions.

]]

local function LuaEncode(inputTable, options)
	-- Check all arg and option types
	CheckType(inputTable, "inputTable", "table") -- Required*, nil not allowed
	CheckType(options, "options", "table", "nil") -- `options` is an optional arg

	-- Options
	if options then
		CheckType(options.Prettify, "options.Prettify", "boolean", "nil")
		CheckType(options.PrettyPrinting, "options.PrettyPrinting", "boolean", "nil") -- Alias for `Options.Prettify`
		CheckType(options.IndentCount, "options.IndentCount", "number", "nil")
		CheckType(options.OutputWarnings, "options.OutputWarnings", "boolean", "nil")
		CheckType(options.StackLimit, "options.StackLimit", "number", "nil")
		CheckType(options.FunctionsReturnRaw, "options.FunctionsReturnRaw", "boolean", "nil")
		CheckType(options.UseInstancePaths, "options.UseInstancePaths", "boolean", "nil")
		CheckType(options.SerializeMathHuge, "options.SerializeMathHuge", "boolean", "nil")

		-- Internal options:
		CheckType(options._StackLevel, "options._StackLevel", "number", "nil")
		CheckType(options._VisitedTables, "options._StackLevel", "table", "nil")
	end

	options = options or {}

	-- Because no if-else-then exp. in Lua 5.1+ (only Luau), for optional boolean values we need to check
	-- if it's nil first, THEN fall back to whatever it's actually set to if it's not nil
	local Prettify = (options.Prettify == nil and options.PrettyPrinting == nil and false) or (options.Prettify ~= nil and options.Prettify) or (options.PrettyPrinting and options.PrettyPrinting)
	local IndentCount = options.IndentCount or (Prettify and 4) or 0
	local OutputWarnings = (options.OutputWarnings == nil and true) or options.OutputWarnings
	local StackLimit = options.StackLimit or 500
	local FunctionsReturnRaw = (options.FunctionsReturnRaw == nil and false) or options.FunctionsReturnRaw
	local UseInstancePaths = (options.UseInstancePaths == nil and true) or options.UseInstancePaths
	local SerializeMathHuge = (options.SerializeMathHuge == nil and true) or options.SerializeMathHuge

	-- Internal options:

	-- Internal stack level for depth checks and indenting
	local StackLevel = options._StackLevel or 1
	-- Set root as visited; cyclic detection
	local VisitedTables = options._VisitedTables or {[inputTable] = true} -- [`visitedTable <table>`] = `isVisited <boolean>`

	-- Stack overflow/output abuse etc; default StackLimit is 500
	if StackLevel >= StackLimit then
		return "{--[[LuaEncode: Stack level limit of `" .. StackLimit .. "` reached]]}"
	end

	-- For +/- inf num serialization
	local PositiveInf = (SerializeMathHuge and "math.huge") or "1/0"
	local NegativeInf = (SerializeMathHuge and "-math.huge") or "-1/0"

	-- Easy-to-reference values for specific args
	local NewEntryString = (Prettify and "\n") or ""
	local ValueSeperator = (Prettify and ", ") or ","
	local BlankSeperator = (Prettify and " ") or ""

	-- For pretty printing (which is optional, and false by default) we need to keep track
	-- of the current stack, then repeat IndentString by that count
	local IndentString = string_rep(" ", IndentCount) -- If 0 this will just be ""
	IndentString = (Prettify and string_rep(IndentString, StackLevel)) or IndentString

	local EndingIndentString = (#IndentString > 0 and string_sub(IndentString, 1, -IndentCount - 1)) or ""

	-- For number key values, incrementing the current internal index
	local KeyIndex = 1

	-- Cases (C-Like) for encoding values, then end setup. Using cases so no elseif bs!
	-- Functions are all expected to return a (<string> EncodedKey, <boolean?> EncloseInBrackets)
	local TypeCases = {} do
		-- Basic func for getting the direct value of an encoded type without weird table.pack()[1] syntax
		local function TypeCase(typeName, value)
			-- Each of these funcs return a tuple, so it'd be annoying to do case-by-case
			local EncodedValue = TypeCases[typeName](value, false) -- False to label as NOT `isKey`
			return EncodedValue
		end

		-- For "tuple" args specifically, so there isn't a bunch of re-used code
		local function Args(...)
			local EncodedValues = {}

			for _, Arg in next, {...} do
				table_insert(EncodedValues, TypeCase(
					Type(Arg),
					Arg
					))
			end

			return table_concat(EncodedValues, ValueSeperator)
		end

		-- For certain Roblox DataTypes, we use a custom serialization method for filling out params etc
		local function Params(newData, params)
			return "(function(v, p) for pn, pv in next, p do v[pn] = pv end return v end)(" ..
				table_concat({newData, TypeCase("table", params)}, ValueSeperator) ..
				")"
		end

		TypeCases["number"] = function(value, isKey)
			-- If the number isn't the current real index of the table, we DO want to
			-- explicitly define it in the serialization no matter what for accuracy
			if isKey and value == KeyIndex then
				-- ^^ What's EXPECTED unless otherwise explicitly defined, if so, return no encoded num
				KeyIndex = KeyIndex + 1
				return nil, true
			end

			-- Lua's internal `tostring` handling will denote positive/negativie-infinite number TValues as "inf", which
			-- makes certain numbers not encode properly. We also just want to make the output precise
			if value == 1/0 then
				return PositiveInf
			elseif value == -1/0 then
				return NegativeInf
			end

			-- Return fixed-formatted precision num
			return string_format("%.14g", value)
		end

		TypeCases["string"] = function(value, isKey)
			if isKey and not LuaKeywords[value] and string_match(value, "^[A-Za-z_][A-Za-z0-9_]*$") then
				-- ^^ Then it's a syntaxically-correct variable, doesn't need explicit string def
				return value, true
			end

			return SerializeString(value)
		end

		TypeCases["table"] = function(value, isKey)
			-- Check duplicate/cyclic references
			do
				local VisitedTable = VisitedTables[value]
				if VisitedTable then
					return string_format(
						"{--[[LuaEncode: Duplicate reference%s]]}",
						(value == inputTable and " (of parent)") or ""
					)
				end

				VisitedTables[value] = true
			end

			-- *Point index not set by NewOptions to original
			local NewOptions = setmetatable({}, {__index = options}) do
				-- Overriding if key because it'd look worse pretty printed in a key
				NewOptions.Prettify = (isKey and false) or Prettify

				-- If Prettify is already false in the real args, set the indent to whatever
				-- the REAL IndentCount is set to
				NewOptions.IndentCount = (isKey and ((not Prettify and IndentCount) or 1)) or IndentCount

				-- Internal options
				NewOptions._StackLevel = (isKey and 1) or StackLevel + 1 -- If isKey, stack lvl is set to the **LOWEST** because it's the key to a value
				NewOptions._VisitedTables = VisitedTables
			end

			return LuaEncode(value, NewOptions)
		end

		TypeCases["boolean"] = function(value)
			return value and "true" or "false"
		end

		TypeCases["nil"] = function(value)
			return "nil"
		end

		TypeCases["function"] = function(value)
			-- If `FunctionsReturnRaw` is set as true, we'll call the function here itself, expecting
			-- a raw value for FunctionsReturnRaw to add as the key/value, you may want to do this for custom userdata or
			-- function closures. Thank's for listening to my Ted Talk!
			if FunctionsReturnRaw then
				return value()
			end

			-- If all else, force key func to return nil; can't handle a func val..
			return "function() --[[LuaEncode: `options.FunctionsReturnRaw` false; can't serialize functions]] return end"
		end

		---------- ROBLOX CUSTOM DATATYPES BELOW ----------

		TypeCases["Axes"] = function(value)
			local EncodedArgs = {}
			local EnumValues = {
				["Enum.Axis.X"] = value.X,
				["Enum.Axis.Y"] = value.Y,
				["Enum.Axis.Z"] = value.Z,
			}

			for EnumValue, IsEnabled in next, EnumValues do
				if IsEnabled then
					table_insert(EncodedArgs, EnumValue)
				end
			end

			return "Axes.new(" .. table_concat(EncodedArgs, ValueSeperator) .. ")"
		end

		TypeCases["BrickColor"] = function(value)
			-- BrickColor.Number (Its enum ID) will be slightly more efficient in all cases in deser,
			-- so we'll use it if Options.Prettify is false
			return "BrickColor.new(" ..
				(Prettify and TypeCase("string", value.Name)) or value.Number ..
				")"
		end

		TypeCases["CFrame"] = function(value)
			return "CFrame.new(" .. Args(value:components()) .. ")"
		end

		TypeCases["CatalogSearchParams"] = function(value)
			return Params("CatalogSearchParams.new()", {
				SearchKeyword = value.SearchKeyword,
				MinPrice = value.MinPrice,
				MaxPrice = value.MaxPrice,
				SortType = value.SortType, -- EnumItem
				CategoryFilter = value.CategoryFilter, -- EnumItem
				BundleTypes = value.BundleTypes, -- table
				AssetTypes = value.AssetTypes -- table
			})
		end

		TypeCases["Color3"] = function(value)
			-- Using floats for RGB values, most accurate for direct serialization
			return "Color3.new(" .. Args(value.R, value.G, value.B)..")"
		end

		TypeCases["ColorSequence"] = function(value)
			return "ColorSequence.new(" .. TypeCase("table", value.Keypoints) .. ")"
		end

		TypeCases["ColorSequenceKeypoint"] = function(value)
			return "ColorSequenceKeypoint.new(" .. Args(value.Time, value.Value) .. ")"
		end

		-- We're using fromUnixTimestamp to serialize the object
		TypeCases["DateTime"] = function(value)
			-- Always an int, we don't need to do anything special
			return "DateTime.fromUnixTimestamp(" .. value.UnixTimestamp .. ")"
		end

		-- Properties seem to throw an error on index if the scope isn't a Studio plugin, so we're
		-- directly getting values! (so fun!!!!)
		TypeCases["DockWidgetPluginGuiInfo"] = function(value)
			-- e.g.: "InitialDockState:Right InitialEnabled:0 InitialEnabledShouldOverrideRestore:0 FloatingXSize:0 FloatingYSize:0 MinWidth:0 MinHeight:0"
			local ValueString = tostring(value)

			return "DockWidgetPluginGuiInfo.new(" ..
				Args(
					-- InitialDockState (Enum.InitialDockState)
					Enum.InitialDockState[string_match(ValueString, "InitialDockState:(%w+)")], -- Enum.InitialDockState.Right
					-- InitialEnabled and InitialEnabledShouldOverrideRestore (boolean as number; `0` or `1`)
					string_match(ValueString, "InitialEnabled:(%w+)") == "1", -- false
					string_match(ValueString, "InitialEnabledShouldOverrideRestore:(%w+)") == "1", -- false
					-- FloatingXSize/FloatingYSize (numbers)
					tonumber(string_match(ValueString, "FloatingXSize:(%w+)")), -- 0
					tonumber(string_match(ValueString, "FloatingYSize:(%w+)")), -- 0
					-- MinWidth/MinHeight (numbers)
					tonumber(string_match(ValueString, "MinWidth:(%w+)")), -- 0
					tonumber(string_match(ValueString, "MinHeight:(%w+)")) -- 0
				) ..
				")"
		end

		-- e.g. `Enum.UserInputType`
		TypeCases["Enum"] = function(value)
			return "Enum." .. tostring(value) -- For now, this is the behavior of enums in tostring.. I have no other choice atm
		end

		-- e.g. `Enum.UserInputType.Gyro`
		TypeCases["EnumItem"] = function(value)
			return tostring(value) -- Returns the full enum index for now (e.g. "Enum.UserInputType.Gyro")
		end

		-- i.e. the `Enum` global return
		TypeCases["Enums"] = function(value)
			return "Enum"
		end

		TypeCases["Faces"] = function(value)
			local EncodedArgs = {}
			local EnumValues = {
				["Enum.NormalId.Top"] = value.Top, -- These return bools
				["Enum.NormalId.Bottom"] = value.Bottom,
				["Enum.NormalId.Left"] = value.Left,
				["Enum.NormalId.Right"] = value.Right,
				["Enum.NormalId.Back"] = value.Back,
				["Enum.NormalId.Front"] = value.Front,
			}

			for EnumValue, IsEnabled in next, EnumValues do
				if IsEnabled then
					table_insert(EncodedArgs, EnumValue)
				end
			end

			return "Faces.new(" .. table_concat(EncodedArgs, ValueSeperator) .. ")"
		end

		TypeCases["FloatCurveKey"] = function(value)
			return "FloatCurveKey.new(" .. Args(value.Time, value.Value, value.Interpolation) .. ")"
		end

		TypeCases["Font"] = function(value)
			return "Font.new(" .. Args(value.Family, value.Weight, value.Style) .. ")"
		end

		-- Instance refs can be evaluated to their paths (optional), but if parented to
		-- nil or some DataModel not under `game`, it'll just return nil
		TypeCases["Instance"] = function(value)
			if UseInstancePaths then
				local InstancePath = EvaluateInstancePath(value)
				if InstancePath then
					return InstancePath
				end

				-- ^^ Now, if the path isn't accessable, falls back to the return below anyway
			end

			return "nil" .. BlankSeperator .. CommentBlock("Instance.new(" .. TypeCase("string", value.ClassName) .. ")")
		end

		TypeCases["NumberRange"] = function(value)
			return "NumberRange.new(" .. Args(value.Min, value.Max) .. ")"
		end

		TypeCases["NumberSequence"] = function(value)
			return "NumberSequence.new(" .. TypeCase("table", value.Keypoints) .. ")"
		end

		TypeCases["NumberSequenceKeypoint"] = function(value)
			return "NumberSequenceKeypoint.new(" .. Args(value.Time, value.Value, value.Envelope) .. ")"
		end

		TypeCases["OverlapParams"] = function(value)
			return Params("OverlapParams.new()", {
				FilterDescendantsInstances = value.FilterDescendantsInstances,
				FilterType = value.FilterType,
				MaxParts = value.MaxParts,
				CollisionGroup = value.CollisionGroup,
				RespectCanCollide = value.RespectCanCollide
			})
		end

		TypeCases["PathWaypoint"] = function(value)
			return "PathWaypoint.new(" .. Args(value.Position, value.Action, value.Label) .. ")"
		end

		TypeCases["PhysicalProperties"] = function(value)
			return "PhysicalProperties.new(" ..
				Args(
					value.Density,
					value.Friction,
					value.Elasticity,
					value.FrictionWeight,
					value.ElasticityWeight
				) ..
				")"
		end

		TypeCases["Random"] = function()
			return "Random.new()"
		end

		TypeCases["Ray"] = function(value)
			return "Ray.new(" .. Args(value.Origin, value.Direction) .. ")"
		end

		TypeCases["RaycastParams"] = function(value)
			return Params("RaycastParams.new()", {
				FilterDescendantsInstances = value.FilterDescendantsInstances,
				FilterType = value.FilterType,
				IgnoreWater = value.IgnoreWater,
				CollisionGroup = value.CollisionGroup,
				RespectCanCollide = value.RespectCanCollide
			})
		end

		TypeCases["Rect"] = function(value)
			return "Rect.new(" .. Args(value.Min, value.Max) .. ")"
		end

		-- Roblox doesn't provide read properties for min/max on `Region3`, but they do on Region3int16.. Anyway,
		-- we CAN calculate the min/max of a Region3 from just .CFrame and .Size.. Thanks to wally for linking me
		-- the thread for this method lol
		TypeCases["Region3"] = function(value)
			local ValueCFrame = value.CFrame
			local ValueSize = value.Size

			return "Region3.new(" ..
				Args(
					ValueCFrame * CFrame.new(-ValueSize / 2), -- Minimum
					ValueCFrame * CFrame.new(ValueSize / 2) -- Maximum
				) ..
				")"
		end

		TypeCases["Region3int16"] = function(value)
			return "Region3int16.new(" .. Args(value.Min, value.Max) .. ")"
		end

		TypeCases["TweenInfo"] = function(value)
			return "TweenInfo.new(" ..
				Args(
					value.Time,
					value.EasingStyle,
					value.EasingDirection,
					value.RepeatCount,
					value.Reverses,
					value.DelayTime
				) ..
				")"
		end

		-- CURRENTLY UNDOCUMENTED*
		TypeCases["RotationCurveKey"] = function(value)
			return "RotationCurveKey.new(" .. Args(value.Time, value.Value, value.Interpolation) .. ")"
		end

		TypeCases["UDim"] = function(value)
			return "UDim.new(" .. Args(value.Scale, value.Offset) .. ")"
		end

		TypeCases["UDim2"] = function(value)
			return "UDim2.new(" ..
				Args(
					-- Not directly using X and Y UDims for better output (i.e. would be
					-- UDim2.new(UDim.new(1, 0), UDim.new(1, 0)) if I did)
					value.X.Scale,
					value.X.Offset,
					value.Y.Scale,
					value.Y.Offset
				) ..
				")"
		end

		TypeCases["Vector2"] = function(value)
			return "Vector2.new(" .. Args(value.X, value.Y) .. ")"
		end

		TypeCases["Vector2int16"] = function(value)
			return "Vector2int16.new(" .. Args(value.X, value.Y) .. ")"
		end

		TypeCases["Vector3"] = function(value)
			return "Vector3.new(" .. Args(value.X, value.Y, value.Z) .. ")"
		end

		TypeCases["Vector3int16"] = function(value)
			return "Vector3int16.new(" .. Args(value.X, value.Y, value.Z) .. ")"
		end

		-- With userdata, just encode directly
		TypeCases["userdata"] = function(value)
			if getmetatable(value) then -- Has mt
				return "newproxy(true)"
			else
				return "newproxy()" -- newproxy() defaults to false (no mt)
			end
		end
	end

	-- Setup output tbl
	local Output = ""

	for Key, Value in next, inputTable do
		local KeyType = Type(Key)
		local ValueType = Type(Value)

		if TypeCases[KeyType] and TypeCases[ValueType] then
			local EntryOutput = (Prettify and NewEntryString .. IndentString) or ""
			local ValueWasEncoded = false -- Keeping track of this for adding a "," to the EntryOutput if needed

			-- Go through and get key val
			local KeyEncodedSuccess, EncodedKeyOrError, DontEncloseInBrackets = pcall(TypeCases[KeyType], Key, true) -- The `true` represents if it's a key or not, here it is

			-- Ignoring 2nd arg (`DontEncloseInBrackets`) because this isn't the key
			local ValueEncodedSuccess, EncodedValueOrError = pcall(TypeCases[ValueType], Value, false) -- `false` because it's NOT the key, it's the value

			-- Im sorry for this logic chain here, I can't use `continue`/`continue()`.. :sob:
			-- Ignoring `if EncodedKeyOrError` because the key doesn't actually need to ALWAYS
			-- be explicitly encoded, like if it's a number of the current key index!
			if KeyEncodedSuccess and ValueEncodedSuccess and EncodedValueOrError then
				-- NOW we'll check for if the key was explicitly encoded, because we don't to stop
				-- the value from encoding, since we've already checked that and it *has* been
				local KeyValue = EncodedKeyOrError and ((DontEncloseInBrackets and EncodedKeyOrError) or string_format("[%s]", EncodedKeyOrError)) .. ((Prettify and " = ") or "=") or ""

				-- Encode key/value together, we've already checked if `EncodedValueOrError` was returned
				EntryOutput = EntryOutput .. KeyValue .. EncodedValueOrError
				ValueWasEncoded = true
			elseif OutputWarnings then -- Then `Encoded(Key/Value)OrError` is the error msg
				-- ^^ Then either the key or value wasn't properly checked or encoded, and there
				-- was an error we need to log!
				local ErrorMessage = string_format(
					"LuaEncode: Failed to encode %s of DataType `%s`: %s",
					(not KeyEncodedSuccess and "key") or (not ValueEncodedSuccess and "value") or "key/value", -- "key/value" for bool type fallback
					ValueType,
					(not KeyEncodedSuccess and SerializeString(EncodedKeyOrError)) or (not ValueEncodedSuccess and SerializeString(EncodedValueOrError)) or "(Failed to get error message)"
				)

				EntryOutput = EntryOutput .. CommentBlock(ErrorMessage)
			end

			-- If there isn't another value after the current index, add ending formatting
			if next(inputTable, Key) then
				-- Yes.. The nesting here is deliberate
				if ValueWasEncoded then
					EntryOutput = EntryOutput .. ","
				end
			else
				-- If there isn't another value after the current index, add ending formatting
				EntryOutput = EntryOutput .. NewEntryString .. EndingIndentString
			end

			Output = Output .. EntryOutput
		end
	end

	Output = "{" .. Output .. "}"
	return Output
end

return LuaEncode
end;
};
-- StarterGui.Sulfoxide.Main.group.Remotespy.Filters.LocalScript
local function C_a0()
local script = G2L["a0"];
	local function castbooltonum(bool)
		if bool == true then
			return 1
		else
			return 0
		end
	end
	local function castnumtobool(num)
		if num == 1 then
			return true
		else
			return false
		end
	end
	for i,v in pairs(script.Parent:GetChildren()) do
		if v:IsA("Frame") then
			v.Frame.InputBegan:Connect(function(input)
				if script.Parent.Parent.Parent.Visible == true then
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						v.Frame.ImageLabel.ImageTransparency = castbooltonum(not castnumtobool(v.Frame.ImageLabel.ImageTransparency))--inverting val
						for a,b in pairs(script.Parent.Parent.Logs:GetChildren()) do
							if b:IsA("TextButton") and b.Frame.ImageLabel.Image == v.ImageLabel.Image then
								b.Visible = not castnumtobool(v.Frame.ImageLabel.ImageTransparency)
							end
						end
					end
				end
			end)
		end
	end
end;
task.spawn(C_a0);
-- StarterGui.Sulfoxide.Main.Tabs.ScrollingFrame.LocalScript
local function C_c8()
local script = G2L["c8"];
	local previouslyselected = script.Parent.Credits
	local initpos = {}
	for _,v in pairs(script.Parent:GetChildren()) do
		if v:IsA("TextButton") then
			initpos[v] = v.AbsolutePosition.Y
		end
	end
	for _,v in pairs(script.Parent:GetChildren()) do
		if v:IsA("TextButton") then
			v.Activated:Connect(function()
				script.Parent.Parent.Selected.Position = UDim2.new(0,0,0,initpos[v]-155+9)
				if v~=previouslyselected then
					previouslyselected.Transparency = 1
					script.Parent.Parent.Parent.group[previouslyselected.Name].Visible = false
				end
				v.Transparency = 0.89
				script.Parent.Parent.Parent.group[v.Name].Visible = true
				script.Parent.Parent.Parent.Title.Text = v.Name
				previouslyselected = v
			end)
		end
	end
end;
task.spawn(C_c8);
-- StarterGui.Sulfoxide.Main.Topbar.drag
local function C_e4()
local script = G2L["e4"];
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	script.Parent.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	script.Parent.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)--credits devforum
end;
task.spawn(C_e4);
-- StarterGui.Sulfoxide.Main.Topbar.buttonhandler
local function C_e5()
local script = G2L["e5"];
	local UserInputService = game:GetService("UserInputService")
	local function hasProperty(object, prop)
		local t = object[prop] --this is just done to check if the property existed, if it did nothing would happen, if it didn't an error will pop, the object[prop] is a different way of writing object.prop, (object.Transparency or object["Transparency"])
	end
	local minimized = false
	script.Parent.Close.Activated:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
	local store = {}
	script.Parent.Minimize.Activated:Connect(function()
		script.Parent.Parent.Visible = false
		local connection
		connection = UserInputService.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.RightShift then
				script.Parent.Parent.Visible = true
				connection:Disconnect()
			end
		end)
	end)
end;
task.spawn(C_e5);

return G2L["1"], require;