.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_DNS1:Ljava/lang/String; = "dns1"

.field private static final KEY_DNS2:Ljava/lang/String; = "dns2"

.field private static final KEY_GATEWAY:Ljava/lang/String; = "gateway"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NETMASK:Ljava/lang/String; = "netmask"

.field private static final KEY_NUM_CHANNELS:Ljava/lang/String; = "num_channels"

.field private static final KEY_PROXY_PORT:Ljava/lang/String; = "wifi_http_port"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_USE_STATIC_IP:Ljava/lang/String; = "use_static_ip"

.field private static final MENU_ITEM_CANCEL:I = 0x2

.field private static final MENU_ITEM_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvancedSettings"

.field private static dns1_orig:Ljava/lang/String;

.field private static dns2_orig:Ljava/lang/String;

.field private static gateway_orig:Ljava/lang/String;

.field private static ip_address_orig:Ljava/lang/String;

.field private static isCancel:Z

.field private static netmask_orig:Ljava/lang/String;

.field private static port_orig:Ljava/lang/String;

.field private static proxy_orig:Ljava/lang/String;

.field private static use_static_ip_orig:I

.field private static wifi_sleep_policy_orig:I


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "ip_address"

    aput-object v1, v0, v4

    const-string v1, "gateway"

    aput-object v1, v0, v5

    const-string v1, "netmask"

    aput-object v1, v0, v6

    const-string v1, "dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initNumChannelsPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 186
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 187
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 195
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 196
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_1

    .line 197
    const v7, 0x7f09011e

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 203
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 205
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 206
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 207
    const v7, 0x7f09011f

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 213
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 214
    .local v3, numChannels:I
    if-ltz v3, :cond_0

    .line 215
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSleepPolicyPreference()V
    .locals 5

    .prologue
    .line 220
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 221
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    .line 332
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 333
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private readWifiOldSettings()V
    .locals 4

    .prologue
    const-string v2, ""

    .line 455
    const-string v2, "AdvancedSettings"

    const-string v3, "readWifiOldSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 459
    .local v1, tContentReslover:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/wifi/AdvancedSettings;->wifi_sleep_policy_orig:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    :try_start_1
    const-string v2, "wifi_http_proxy"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    .line 465
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "wifi_http_port"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    .line 472
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 477
    :cond_1
    :goto_2
    :try_start_3
    const-string v2, "wifi_use_static_ip"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/wifi/AdvancedSettings;->use_static_ip_orig:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 481
    :goto_3
    :try_start_4
    const-string v2, "wifi_static_ip"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    .line 482
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 487
    :cond_2
    :goto_4
    :try_start_5
    const-string v2, "wifi_static_netmask"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    .line 488
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 493
    :cond_3
    :goto_5
    :try_start_6
    const-string v2, "wifi_static_gateway"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    .line 494
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 495
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 499
    :cond_4
    :goto_6
    :try_start_7
    const-string v2, "wifi_static_dns1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    .line 500
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 505
    :cond_5
    :goto_7
    :try_start_8
    const-string v2, "wifi_static_dns2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    .line 506
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 512
    :cond_6
    :goto_8
    return-void

    .line 460
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 462
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 467
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 469
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 474
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 475
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 478
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 479
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 484
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 485
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 490
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 491
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 496
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 497
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 502
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 503
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 508
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 509
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private refreshMacAddress()V
    .locals 5

    .prologue
    .line 442
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 443
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 445
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 446
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 447
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    return-void

    .line 446
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 447
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0901cc

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateSettingsProvider()V
    .locals 7

    .prologue
    const-string v6, "wifi_http_port"

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "wifi_use_static_ip"

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    const-string v4, "wifi_http_port"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 432
    .local v3, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_http_port"

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 436
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 437
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 439
    .restart local v1       #i:I
    .restart local v3       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "wifi_http_port"

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v6, "wifi_use_static_ip"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    const-string v5, "wifi_http_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 406
    .local v4, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    const-string v5, "wifi_http_port"

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 413
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 416
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    .end local v4           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    move v6, v7

    .line 401
    goto :goto_0

    .line 422
    .restart local v1       #i:I
    .restart local v3       #settingValue:Ljava/lang/String;
    .restart local v4       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private writeWifiOldSettings()V
    .locals 4

    .prologue
    .line 515
    const-string v2, "AdvancedSettings"

    const-string v3, "writeWifiOldSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 519
    .local v1, tContentReslover:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_sleep_policy"

    sget v3, Lcom/android/settings/wifi/AdvancedSettings;->wifi_sleep_policy_orig:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 524
    const-string v2, "wifi_http_proxy"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    :cond_0
    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 529
    const-string v2, "wifi_http_port"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 533
    :cond_1
    :goto_2
    :try_start_3
    const-string v2, "wifi_use_static_ip"

    sget v3, Lcom/android/settings/wifi/AdvancedSettings;->use_static_ip_orig:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 537
    :goto_3
    :try_start_4
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 538
    const-string v2, "wifi_static_ip"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 542
    :cond_2
    :goto_4
    :try_start_5
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 543
    const-string v2, "wifi_static_netmask"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 547
    :cond_3
    :goto_5
    :try_start_6
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 548
    const-string v2, "wifi_static_gateway"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 552
    :cond_4
    :goto_6
    :try_start_7
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 553
    const-string v2, "wifi_static_dns1"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 557
    :cond_5
    :goto_7
    :try_start_8
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 558
    const-string v2, "wifi_static_dns2"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 563
    :cond_6
    :goto_8
    return-void

    .line 520
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 521
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 526
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 530
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 531
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 534
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 535
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 539
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 540
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 544
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 545
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 549
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 550
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 554
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 555
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 559
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 560
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v3, 0x7f04002c

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 118
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->readWifiOldSettings()V

    .line 121
    const-string v3, "use_static_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v3, "wifi_http_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 132
    .local v2, wifiHttpProxyEditText:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 139
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 368
    const/4 v0, 0x1

    const v1, 0x7f090125

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    const/4 v0, 0x2

    const v1, 0x7f090126

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 374
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->writeWifiOldSettings()V

    .line 244
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 383
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 385
    goto :goto_0

    .line 389
    :pswitch_1
    sput-boolean v1, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 392
    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v10, 0x7f09011e

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "wifi_http_port"

    .line 250
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v8, v12

    .line 324
    .end local p2
    :goto_0
    return v8

    .line 253
    .restart local p2
    :cond_0
    const-string v8, "num_channels"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 255
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 256
    .local v4, numChannels:I
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 257
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 258
    const v8, 0x7f09011e

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #numChannels:I
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v8, v12

    .line 324
    goto :goto_0

    .line 261
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 262
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 264
    goto :goto_0

    .line 267
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v8, "sleep_policy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 269
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 271
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 272
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v8, 0x7f090122

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 274
    goto :goto_0

    .line 277
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v8, "use_static_ip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 278
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 281
    .local v6, value:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_use_static_ip"

    if-eqz v6, :cond_4

    move v10, v12

    :goto_2
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 283
    :catch_2
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 284
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v10, v11

    .line 281
    goto :goto_2

    .line 288
    .end local v6           #value:Z
    .restart local p2
    :cond_5
    const-string v8, "wifi_http_port"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 289
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 291
    .local v5, proxyport:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_http_port"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 294
    :catch_3
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 295
    goto/16 :goto_0

    .line 300
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #proxyport:Ljava/lang/String;
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 303
    .local v6, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 307
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 308
    const v8, 0x7f090127

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 309
    goto/16 :goto_0

    .line 315
    :cond_7
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 317
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 316
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshMacAddress()V

    .line 183
    return-void
.end method
