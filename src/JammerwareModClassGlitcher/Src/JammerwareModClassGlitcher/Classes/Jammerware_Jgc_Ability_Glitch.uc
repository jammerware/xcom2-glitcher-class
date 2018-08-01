class Jammerware_Jgc_Ability_Glitch extends X2Ability
	config(JammerwareModClassGlitcher);

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(CreateGlitch());
	
	return Templates;
}

static function X2AbilityTemplate CreateGlitch()
{
	local X2AbilityTemplate Template;
	local X2Effect_MimicBeacon MimicBeaconEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'Jammerware_Jgc_Ability_Glitch');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	// Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	// Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;

	// conditions
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	// triggering
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	MimicBeaconEffect = new class'X2Effect_MimicBeacon';
	MimicBeaconEffect.BuildPersistentEffect(
        1, // turns, ignored because of...
        true, // infinite duration
        true, // remove when source dies
    );
	Template.AddShooterEffect(MimicBeaconEffect);

	Template.bSkipFireAction = true;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	return Template;
}