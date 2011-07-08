package com.android.launcher2; class LauncherPreferenceActivity {/*

.class public Lcom/android/launcher2/LauncherPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LauncherPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static ENABLE_SET_TRANSFORMATION:Z


# instance fields
.field private mIconShadow:Landroid/preference/Preference;

.field private mKeepInMemoryPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    #v0=(One);
    sput-boolean v0, Lcom/android/launcher2/LauncherPreferenceActivity;->ENABLE_SET_TRANSFORMATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 38
    #v4=(One);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f050001

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 40
    const-string v2, "pref_key_keep_in_memory"

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/Preference;

    .line 41
    iget-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    const-string v2, "pref_key_icon_shadow"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    .line 43
    iget-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    sget-boolean v2, Landroid/os/Build;->IS_MILESTONE:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 45
    const-string v2, "pref_key_checkboxes"

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 46
    .local v0, boxes:Landroid/preference/PreferenceGroup;
    new-instance v1, Landroid/preference/CheckBoxPreference;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, prefDrawingCache:Landroid/preference/Preference;
    #v1=(Reference);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 48
    const-string v2, "pref_key_enable_drawing_cache"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 49
    const v2, 0x7f0c0052

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 50
    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 53
    .end local v0           #boxes:Landroid/preference/PreferenceGroup;
    .end local v1           #prefDrawingCache:Landroid/preference/Preference;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    const-string v2, "pref_key_render_in_truecolor"

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    sget-boolean v3, Landroid/os/Build;->IS_MILESTONE:Z

    #v3=(Boolean);
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 54
    sget-boolean v2, Lcom/android/launcher2/LauncherPreferenceActivity;->ENABLE_SET_TRANSFORMATION:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 55
    const v2, 0x7f050003

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 57
    :cond_1
    return-void

    :cond_2
    #v2=(Reference);v3=(Boolean);
    move v3, v4

    .line 53
    #v3=(One);
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 61
    #v4=(Null);
    iget-object v1, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/Preference;

    #v1=(Reference);
    if-ne p1, v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    #v2=(Reference);
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    :cond_0
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v5

    :cond_1
    #v0=(Uninit);v2=(Reference);v3=(Boolean);
    move v3, v4

    .line 62
    #v3=(Null);
    goto :goto_0

    .line 64
    .restart local p2
    :cond_2
    #v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 66
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_1
.end method

*/}
