-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Aide"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
}
Debian_menu["Debian_Applications_Accessibilité"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Bureautique"] = {
	{"AbiWord Word Processor","/usr/bin/abiword","/usr/share/pixmaps/abiword.xpm"},
}
Debian_menu["Debian_Applications_Dessin_et_image"] = {
	{"Image Scan!","/usr/bin/iscan"},
	{"Inkscape","/usr/bin/inkscape","/usr/share/pixmaps/inkscape.xpm"},
	{"Ipe","/usr/bin/ipe"},
	{"mtPaint","/usr/bin/mtpaint"},
	{"The GIMP","/usr/bin/gimp","/usr/share/pixmaps/gimp.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Éditeurs"] = {
	{"LeafPad","/usr/bin/leafpad","/usr/share/pixmaps/leafpad.xpm"},
	{"Xedit","xedit"},
	{"xpad","/usr/bin/xpad",},
}
Debian_menu["Debian_Applications_Émulateurs_de_terminaux"] = {
	{"LXTerminal","/usr/bin/lxterminal","/usr/share/pixmaps/lxterminal.xpm"},
	{"Rxvt-Unicode","rxvt-unicode","/usr/share/pixmaps/urxvt.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"Xvt","/usr/bin/xvt -ls"},
}
Debian_menu["Debian_Applications_Gestion_de_fichiers"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
	{"catfish","catfish"},
	{"gprename","/usr/bin/gprename","/usr/share/pixmaps/gprename/gprename_debian_menu_icon.xpm"},
	{"Thunar","/usr/bin/thunar"},
	{"Unison 2.48.3 (GTK)","/usr/bin/unison-2.48.3-gtk","/usr/share/pixmaps/unison-gtk.xpm"},
}
Debian_menu["Debian_Applications_Interpréteurs_de_commandes"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh5"},
}
Debian_menu["Debian_Applications_Langue_écrite"] = {
	{"ClipIt","/usr/bin/clipit"},
}
Debian_menu["Debian_Applications_Lecteurs"] = {
	{"Xditview","xditview"},
}
Debian_menu["Debian_Applications_Programmation"] = {
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
}
Debian_menu["Debian_Applications_Réseau_Communication"] = {
	{"Pidgin","/usr/bin/pidgin","/usr/share/pixmaps/pidgin-menu.xpm"},
	{"s-nail", "x-terminal-emulator -e ".."/usr/bin/s-nail"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet.netkit"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Applications_Réseau_Navigateurs_web"] = {
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
}
Debian_menu["Debian_Applications_Réseau_Transfert_de_fichiers"] = {
	{"gFTP","/usr/bin/gftp-gtk","/usr/share/pixmaps/gftp.xpm"},
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Applications_Réseau"] = {
	{ "Communication", Debian_menu["Debian_Applications_Réseau_Communication"] },
	{ "Navigateurs web", Debian_menu["Debian_Applications_Réseau_Navigateurs_web"] },
	{ "Transfert de fichiers", Debian_menu["Debian_Applications_Réseau_Transfert_de_fichiers"] },
}
Debian_menu["Debian_Applications_Sciences_Électronique"] = {
	{"Fritzing","/usr/bin/Fritzing","/usr/share/pixmaps/fritzing_icon.xpm"},
}
Debian_menu["Debian_Applications_Sciences_Mathématiques"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"galculator","/usr/bin/galculator","/usr/share/pixmaps/galculator.xpm"},
	{"TIemu","/usr/bin/tiemu"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Sciences"] = {
	{ "Électronique", Debian_menu["Debian_Applications_Sciences_Électronique"] },
	{ "Mathématiques", Debian_menu["Debian_Applications_Sciences_Mathématiques"] },
}
Debian_menu["Debian_Applications_Son_et_musique"] = {
	{"Alsamixergui","/usr/bin/alsamixergui","/usr/share/pixmaps/alsamixergui.xpm"},
	{"ncmpcpp", "x-terminal-emulator -e ".."/usr/bin/ncmpcpp"},
	{"paman","/usr/bin/paman"},
	{"pavucontrol","/usr/bin/pavucontrol"},
	{"pavumeter","/usr/bin/pavumeter"},
}
Debian_menu["Debian_Applications_Système_Administration"] = {
	{"Editres","editres"},
	{"GNOME partition editor","su-to-root -X -c /usr/sbin/gparted","/usr/share/pixmaps/gparted.xpm"},
	{"menulibre","menulibre"},
	{"Network Admin","/usr/bin/network-admin","/usr/share/gnome-system-tools/pixmaps/network.xpm"},
	{"nitrogen","/usr/bin/nitrogen"},
	{"Openbox Configuration Manager","/usr/bin/obconf","/usr/share/pixmaps/obconf.xpm"},
	{"Openbox Menu Editor","/usr/bin/obmenu"},
	{"Services Admin","/usr/bin/services-admin","/usr/share/gnome-system-tools/pixmaps/services.xpm"},
	{"Shares Admin","/usr/bin/shares-admin","/usr/share/gnome-system-tools/pixmaps/shares.xpm"},
	{"System Information","/usr/bin/hardinfo","/usr/share/pixmaps/hardinfo.xpm"},
	{"Time Admin","/usr/bin/time-admin","/usr/share/gnome-system-tools/pixmaps/time.xpm"},
	{"User accounts Admin","/usr/bin/users-admin","/usr/share/gnome-system-tools/pixmaps/users.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_Système_Gestionnaires_de_paquets"] = {
	{"Synaptic Package Manager","x-terminal-emulator -e synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Applications_Système_Matériel"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_Système_Paramétrage_de_la_langue"] = {
	{"Input Method Configuration", "x-terminal-emulator -e ".."/usr/bin/im-config"},
}
Debian_menu["Debian_Applications_Système_Sécurité"] = {
	{"light-locker-settings","light-locker-settings"},
}
Debian_menu["Debian_Applications_Système_Surveillance"] = {
	{"Conky", "x-terminal-emulator -e ".."/usr/bin/conky"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_Système"] = {
	{ "Administration", Debian_menu["Debian_Applications_Système_Administration"] },
	{ "Gestionnaires de paquets", Debian_menu["Debian_Applications_Système_Gestionnaires_de_paquets"] },
	{ "Matériel", Debian_menu["Debian_Applications_Système_Matériel"] },
	{ "Paramétrage de la langue", Debian_menu["Debian_Applications_Système_Paramétrage_de_la_langue"] },
	{ "Sécurité", Debian_menu["Debian_Applications_Système_Sécurité"] },
	{ "Surveillance", Debian_menu["Debian_Applications_Système_Surveillance"] },
}
Debian_menu["Debian_Applications_Vidéo"] = {
	{"GNOME MPlayer","gnome-mplayer","/usr/share/pixmaps/gnome-mplayer.xpm"},
	{"guvcview","/usr/bin/guvcview"},
	{"MKV Creator","/usr/bin/mkvtoolnix-gui"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibilité", Debian_menu["Debian_Applications_Accessibilité"] },
	{ "Bureautique", Debian_menu["Debian_Applications_Bureautique"] },
	{ "Dessin et image", Debian_menu["Debian_Applications_Dessin_et_image"] },
	{ "Éditeurs", Debian_menu["Debian_Applications_Éditeurs"] },
	{ "Émulateurs de terminaux", Debian_menu["Debian_Applications_Émulateurs_de_terminaux"] },
	{ "Gestion de fichiers", Debian_menu["Debian_Applications_Gestion_de_fichiers"] },
	{ "Interpréteurs de commandes", Debian_menu["Debian_Applications_Interpréteurs_de_commandes"] },
	{ "Langue écrite", Debian_menu["Debian_Applications_Langue_écrite"] },
	{ "Lecteurs", Debian_menu["Debian_Applications_Lecteurs"] },
	{ "Programmation", Debian_menu["Debian_Applications_Programmation"] },
	{ "Réseau", Debian_menu["Debian_Applications_Réseau"] },
	{ "Sciences", Debian_menu["Debian_Applications_Sciences"] },
	{ "Son et musique", Debian_menu["Debian_Applications_Son_et_musique"] },
	{ "Système", Debian_menu["Debian_Applications_Système"] },
	{ "Vidéo", Debian_menu["Debian_Applications_Vidéo"] },
}
Debian_menu["Debian_CrossOver"] = {
	{"CrossOver","/opt/cxoffice/bin/crossover","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Uninstall CrossOver Linux","/opt/cxoffice/bin/cxuninstall","/opt/cxoffice/share/icons/32x32/cxuninstall.png"},
}
Debian_menu["Debian_Écran_Veille"] = {
	{"Activate ScreenSaver (Next)","/usr/bin/xscreensaver-command -next"},
	{"Activate ScreenSaver (Previous)","/usr/bin/xscreensaver-command -prev"},
	{"Activate ScreenSaver (Random)","/usr/bin/xscreensaver-command -activate"},
	{"Demo Screen Hacks","/usr/bin/xscreensaver-command -demo"},
	{"Disable XScreenSaver","/usr/bin/xscreensaver-command -exit"},
	{"Enable XScreenSaver","/usr/bin/xscreensaver"},
	{"Reinitialize XScreenSaver","/usr/bin/xscreensaver-command -restart"},
	{"ScreenSaver Preferences","/usr/bin/xscreensaver-command -prefs"},
}
Debian_menu["Debian_Écran_Verrouillage"] = {
	{"Lock Screen (XScreenSaver)","/usr/bin/xscreensaver-command -lock"},
}
Debian_menu["Debian_Écran"] = {
	{ "Veille", Debian_menu["Debian_Écran_Veille"] },
	{ "Verrouillage", Debian_menu["Debian_Écran_Verrouillage"] },
}
Debian_menu["Debian_Jeux_Action"] = {
	{"Extreme Tux Racer","/usr/games/etr","/usr/share/pixmaps/etr.xpm"},
}
Debian_menu["Debian_Jeux_Jouets"] = {
	{"Oclock","oclock"},
	{"Redshift","redshift-gtk"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Jeux"] = {
	{ "Action", Debian_menu["Debian_Jeux_Action"] },
	{ "Jouets", Debian_menu["Debian_Jeux_Jouets"] },
}
Debian_menu["Debian"] = {
	{ "Aide", Debian_menu["Debian_Aide"] },
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "CrossOver", Debian_menu["Debian_CrossOver"] },
	{ "Écran", Debian_menu["Debian_Écran"] },
	{ "Jeux", Debian_menu["Debian_Jeux"] },
}
