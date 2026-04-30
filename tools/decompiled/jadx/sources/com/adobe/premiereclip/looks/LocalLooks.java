package com.adobe.premiereclip.looks;

import com.adobe.premiereclip.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LocalLooks {
    private static final ArrayList<ClipLook> looksList = new ArrayList<>();
    private static boolean isInit = false;

    public static void init() {
        if (!isInit) {
            looksList.add(new ClipLook("0", "Normal", R.drawable.gra_looks_normal, -1));
            looksList.add(new ClipLook("1", "6am", R.drawable.gra_looks_6am, R.raw.am6));
            looksList.add(new ClipLook("2", "Aged", R.drawable.gra_looks_aged, R.raw.aged));
            looksList.add(new ClipLook("3", "Burke", R.drawable.gra_looks_burke, R.raw.burke));
            looksList.add(new ClipLook("4", "Cave", R.drawable.gra_looks_cave, R.raw.cave));
            looksList.add(new ClipLook("5", "Cinema", R.drawable.gra_looks_cinema, R.raw.cinema));
            looksList.add(new ClipLook("6", "Cirrus", R.drawable.gra_looks_cirrus, R.raw.cirrus));
            looksList.add(new ClipLook("7", "Dreams", R.drawable.gra_looks_dreams, R.raw.dreams));
            looksList.add(new ClipLook("10", "Fashion", R.drawable.gra_looks_film, R.raw.fashion));
            looksList.add(new ClipLook("11", "Film", R.drawable.gra_looks_film, R.raw.film));
            looksList.add(new ClipLook("12", "Glacier", R.drawable.gra_looks_glacier, R.raw.glacier));
            looksList.add(new ClipLook("13", "Glory", R.drawable.gra_looks_glory, R.raw.glory));
            looksList.add(new ClipLook("14", "Gold", R.drawable.gra_looks_gold, R.raw.gold));
            looksList.add(new ClipLook("15", "Jewel", R.drawable.gra_looks_jewel, R.raw.jewel));
            looksList.add(new ClipLook("16", "Linden", R.drawable.gra_looks_linden, R.raw.linden));
            looksList.add(new ClipLook("17", "Marshall", R.drawable.gra_looks_marshall, R.raw.marshall));
            looksList.add(new ClipLook("18", "Noir", R.drawable.gra_looks_noir, R.raw.noir));
            looksList.add(new ClipLook("19", "Notch", R.drawable.gra_looks_notch, R.raw.notch));
            looksList.add(new ClipLook("20", "Pacific", R.drawable.gra_looks_pacific, R.raw.pacific));
            looksList.add(new ClipLook("21", "Sunrise", R.drawable.gra_looks_sunrise, R.raw.sunrise));
            looksList.add(new ClipLook("22", "Classic", R.drawable.gra_looks_classic, R.raw.classic));
            looksList.add(new ClipLook("23", "Duo", R.drawable.gra_looks_duo, R.raw.duo));
            looksList.add(new ClipLook("24", "Punch", R.drawable.gra_looks_punch, R.raw.punch));
            looksList.add(new ClipLook("25", "Retro", R.drawable.gra_looks_retro, R.raw.retro));
            looksList.add(new ClipLook("26", "Rush", R.drawable.gra_looks_rush, R.raw.rush));
            looksList.add(new ClipLook("27", "Silk", R.drawable.gra_looks_silk, R.raw.silk));
            looksList.add(new ClipLook("28", "Soul", R.drawable.gra_looks_soul, R.raw.soul));
            looksList.add(new ClipLook("29", "Steel", R.drawable.gra_looks_steel, R.raw.steel));
            looksList.add(new ClipLook("30", "Vibrant", R.drawable.gra_looks_vibrant, R.raw.vibrant));
            looksList.add(new ClipLook("31", "Bright", R.drawable.gra_looks_bright, R.raw.bright));
            isInit = true;
        }
    }

    public static BaseLook getClipLook(String str) {
        for (ClipLook clipLook : looksList) {
            if (clipLook.getLookId().equals(str)) {
                return clipLook;
            }
        }
        return null;
    }

    public static ArrayList<ClipLook> getClipLooks() {
        return looksList;
    }

    public static int size() {
        return looksList.size();
    }

    public static ClipLook getLookFromLookName(String str) {
        for (ClipLook clipLook : looksList) {
            if (clipLook.getLookName().equals(str)) {
                return clipLook;
            }
        }
        return null;
    }

    public static int getIndexOfLookFromId(String str) {
        for (ClipLook clipLook : looksList) {
            if (clipLook.getLookId().equals(str)) {
                return looksList.indexOf(clipLook);
            }
        }
        return 0;
    }
}
