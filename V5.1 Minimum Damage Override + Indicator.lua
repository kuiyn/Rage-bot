local rbot_ref = gui.Reference("Ragebot")
local rbot_tab = gui.Tab(rbot_ref, "min_dmg_override", "Min Damage Override")
local min_dmg_box = gui.Groupbox(rbot_tab, "Minimum Damage Override", 15, 15, 292.5, 250)

local min_dmg_override_check = gui.Checkbox(min_dmg_box, "min_dmg", "Master Switch", false)
local min_dmg_override_ind_check = gui.Checkbox(min_dmg_box, "min_dmg_ind", "Indicator", false)
local min_dmg_override_ind_color_p = gui.ColorPicker(min_dmg_override_ind_check, "min_dmg_ind_color", "ColorPicker", 255, 255, 255, 255)
local min_dmg_override_toggle_check_b = gui.Checkbox(min_dmg_box, "min_dmg_keyb", "Min Damage Override Toggle", false)
local min_dmg_override_comb_b = gui.Combobox(min_dmg_box, "min_dmg_override_comb_b", "Settings Mode", "Min Damage", "Min Damage Tolerance")


min_dmg_override_check:SetDescription("Enable Minimum Damage Override.")
min_dmg_override_ind_check:SetDescription("Draw Indicator showing your current Min DMG.")
min_dmg_override_toggle_check_b:SetDescription("Bindtoggle / Bindhold this to Override Min DMG.")
min_dmg_override_comb_b:SetDescription("Switch between Min Damage / Tolerance Override.")


local original_dmg_awp_slid = gui.Slider(min_dmg_box, "or_dmg_awp", "Original AWP Min Damage", (gui.GetValue("rbot.hitscan.accuracy.sniper.mindamage")), 0, 130);
local original_dmg_scout_slid = gui.Slider(min_dmg_box, "or_dmg_scout", "Original Scout Min Damage", (gui.GetValue("rbot.hitscan.accuracy.scout.mindamage")), 0, 130);
local original_dmg_r8_slid = gui.Slider(min_dmg_box, "or_dmg_r8", "Original Heavy Pistol Min Damage", (gui.GetValue("rbot.hitscan.accuracy.hpistol.mindamage")), 0, 130);
local original_dmg_auto_slid = gui.Slider(min_dmg_box, "or_dmg_auto", "Original Auto Min Damage", (gui.GetValue("rbot.hitscan.accuracy.asniper.mindamage")), 0, 130);
local original_dmg_pistol_slid = gui.Slider(min_dmg_box, "or_dmg_pistol", "Original Pistol Min Damage", (gui.GetValue("rbot.hitscan.accuracy.pistol.mindamage")), 0, 130);
local original_dmg_rifle_slid = gui.Slider(min_dmg_box, "or_dmg_rifle", "Original Rifle Min Damage", (gui.GetValue("rbot.hitscan.accuracy.rifle.mindamage")), 0, 130)


local override_dmg_awp_slid = gui.Slider(min_dmg_box, "ov_dmg_awp", "Override AWP Min Damage", 1, 0, 130);
local override_dmg_scout_slid = gui.Slider(min_dmg_box, "ov_dmg_scout", "Override Scout Min Damage", 1, 0, 130);
local override_dmg_r8_slid = gui.Slider(min_dmg_box, "ov_dmg_r8", "Override Heavy Pistol Min Damage", 1, 0, 130);
local override_dmg_auto_slid = gui.Slider(min_dmg_box, "ov_dmg_auto", "Override Auto Min Damage", 1, 0, 130);
local override_dmg_pistol_slid = gui.Slider(min_dmg_box, "ov_dmg_pistol", "Override Pistol Min Damage", 1, 0, 130);
local override_dmg_rifle_slid = gui.Slider(min_dmg_box, "ov_dmg_rifle", "Override Rifle Min Damage", 1, 0, 130)


local original_dmg_hp_plus_awp_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_awp", "Original AWP Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.sniper.mindamagehp")), 0, 30);
local original_dmg_hp_plus_scout_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_scout", "Original Scout Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.scout.mindamagehp")), 0, 30);
local original_dmg_hp_plus_r8_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_r8", "Original Heavy Pistol Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.hpistol.mindamagehp")), 0, 30);
local original_dmg_hp_plus_auto_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_auto", "Original Auto Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.asniper.mindamagehp")), 0, 30);
local original_dmg_hp_plus_pistol_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_pistol", "Original Pistol Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.pistol.mindamagehp")), 0, 30);
local original_dmg_hp_plus_rifle_slid = gui.Slider(min_dmg_box, "or_dmg_hp_plus_rifle", "Original Rifle Min DMG Tolerance", (gui.GetValue("rbot.hitscan.accuracy.rifle.mindamagehp")), 0, 30)


local override_dmg_hp_plus_awp_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_awp", "Override AWP Min DMG Tolerance", 0, 0, 30);
local override_dmg_hp_plus_scout_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_scout", "Override Scout Min DMG Tolerance", 0, 0, 30);
local override_dmg_hp_plus_r8_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_r8", "Override Heavy Pistol Min DMG Tolerance", 0, 0, 30);
local override_dmg_hp_plus_auto_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_auto", "Override Auto Min DMG Tolerance", 0, 0, 30);
local override_dmg_hp_plus_pistol_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_pistol", "Override Pistol Min DMG Tolerance", 0, 0, 30);
local override_dmg_hp_plus_rifle_slid = gui.Slider(min_dmg_box, "ov_dmg_hp_plus_rifle", "Override Rifle Min DMG Tolerance", 0, 0, 30)

local original_dmg =
{
    original_dmg_awp_slid;
    original_dmg_scout_slid;
    original_dmg_r8_slid;
    original_dmg_auto_slid;
    original_dmg_pistol_slid;
    original_dmg_rifle_slid
}

local override_dmg =
{
    override_dmg_awp_slid;
    override_dmg_scout_slid;
    override_dmg_r8_slid;
    override_dmg_auto_slid;
    override_dmg_pistol_slid;
    override_dmg_rifle_slid
}

local original_dmg_hp =
{
    original_dmg_hp_plus_awp_slid;
    original_dmg_hp_plus_scout_slid;
    original_dmg_hp_plus_r8_slid;
    original_dmg_hp_plus_auto_slid;
    original_dmg_hp_plus_pistol_slid;
    original_dmg_hp_plus_rifle_slid
}

local override_dmg_hp =
{
    override_dmg_hp_plus_awp_slid;
    override_dmg_hp_plus_scout_slid;
    override_dmg_hp_plus_r8_slid;
    override_dmg_hp_plus_auto_slid;
    override_dmg_hp_plus_pistol_slid;
    override_dmg_hp_plus_rifle_slid
}

local patterns =
{
    "%s+";
    "auto";
    "lightmachinegun";
    "submachinegun";
    "heavypistol";
}

local replacements =
{
    "";
    "a";
    "lmg";
    "smg";
    "hpistol";
}

local weapon_ids_shared = {45; 49; 44; 57; 68; 46; 47; 39; 43; 48; 20}

local weapons =
{
    "sniper";
    "scout";
    "hpistol";
    "asniper";
    "pistol";
    "rifle";
    "smg";
    "knife";
    "shotgun";
    "lmg";
    "shared";
}

local verdana_12 = draw.CreateFont("Verdana", 12)
local run_funcs = false
local screen_w, screen_h, screen_w_h, screen_h_h = 0, 0, 0, 0
local min_dmg_state = original_dmg
local min_dmg_state_hp = original_dmg_hp
local lp
local current_weapon_hitscan

local function condition_handler()

    lp = entities.GetLocalPlayer()

    screen_w, screen_h = draw.GetScreenSize()
    screen_w_h, screen_h_h = screen_w * 0.5, screen_h * 0.5

    if lp ~= nil and lp:IsAlive() then

        run_funcs = true
    else
        run_funcs = false
    end
end

callbacks.Register("Draw", condition_handler)

local function curr_weapon()

    if run_funcs then

        current_weapon_hitscan = string.lower(string.gsub(gui.GetValue("rbot.hitscan.accuracy"), '"', ""))

        for i = 1, #patterns do
            current_weapon_hitscan = string.gsub(current_weapon_hitscan, patterns[i], replacements[i])
        end

        for i = 1, #weapon_ids_shared do
            if lp:GetWeaponID() == weapon_ids_shared[i] or lp:GetWeaponType() == 0 then
                current_weapon_hitscan = "shared"
            end
        end

        return current_weapon_hitscan
    end
end

local function min_dmg_override()

    if min_dmg_override_check:GetValue() then
        if min_dmg_override_toggle_check_b:GetValue() then

            min_dmg_state = override_dmg
            min_dmg_state_hp = override_dmg_hp
        else
            min_dmg_state = original_dmg
            min_dmg_state_hp = original_dmg_hp
        end

        for i = 1, 6 do
            gui.SetValue("rbot.hitscan.accuracy." .. weapons[i] .. ".mindamage", min_dmg_state[i]:GetValue())
            gui.SetValue("rbot.hitscan.accuracy." .. weapons[i] .. ".mindamagehp", min_dmg_state_hp[i]:GetValue())
        end
    end

    for i = 1, #original_dmg do

        if min_dmg_override_comb_b:GetValue() == 0 then

            original_dmg_hp[i]:SetInvisible(true)
            override_dmg_hp[i]:SetInvisible(true)

            if min_dmg_state == override_dmg then

                override_dmg[i]:SetInvisible(false)
                original_dmg[i]:SetInvisible(true)
            else

                override_dmg[i]:SetInvisible(true)
                original_dmg[i]:SetInvisible(false)
            end

        else

            original_dmg[i]:SetInvisible(true)
            override_dmg[i]:SetInvisible(true)

            if min_dmg_state_hp == override_dmg_hp then

                override_dmg_hp[i]:SetInvisible(false)
                original_dmg_hp[i]:SetInvisible(true)
            else

                override_dmg_hp[i]:SetInvisible(true)
                original_dmg_hp[i]:SetInvisible(false)
            end
        end
    end
end
callbacks.Register("Draw", min_dmg_override)

local function draw_min_dmg()

    if run_funcs then
        if min_dmg_override_check:GetValue() and min_dmg_override_ind_check:GetValue() and curr_weapon() ~= "shared" then
            local min_dmg = gui.GetValue("rbot.hitscan.accuracy." .. curr_weapon() .. ".mindamage")
            local hp_plus = gui.GetValue("rbot.hitscan.accuracy." .. curr_weapon() .. ".mindamagehp")
            draw.Color(min_dmg_override_ind_color_p:GetValue())
            draw.SetFont(verdana_12)
            draw.TextShadow((screen_w_h + 12), (screen_h_h - 15), tostring(min_dmg))
            local x_modifier = 0

            if min_dmg > 99 then
                x_modifier = 8
            else
                x_modifier = 0
            end

            if min_dmg + hp_plus ~= min_dmg then
                draw.TextShadow((screen_w_h + 25 + x_modifier), (screen_h_h - 15), tostring("("..min_dmg + hp_plus..")"))
            end
        end
    end
end
callbacks.Register("Draw", draw_min_dmg)
