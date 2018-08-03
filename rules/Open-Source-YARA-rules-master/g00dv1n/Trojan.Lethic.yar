rule TrojanWin32LethicBSample
{
	meta:
		Description  = "Trojan.Lethic.sm"
		ThreatLevel  = "5"
	strings:
		$ = "zaproxza" ascii wide
		$ = "93.190.137.51" ascii wide
		$ = "antaw" ascii wide
		$hex0 = { e8 ?? ?? ?? ?? 8b ?? ?? 52 e8 ?? ?? ?? ?? 8b ?? ?? 50 e8 ?? ?? ?? ?? 68 74 43 40 00 e8 ?? ?? ?? ?? 89 ?? ?? 6a 33 68 00 40 40 00 8b ?? ?? 51 e8 ?? ?? ?? ?? 8b ?? ?? 89 ?? ?? ?? ?? ?? 8b ?? ?? 83 ?? ?? ?? ?? ?? ?? 75 ?? e9 ?? ?? ?? ?? 8b ?? ??}
	condition:
		(2 of them) or (any of ($hex*))
}