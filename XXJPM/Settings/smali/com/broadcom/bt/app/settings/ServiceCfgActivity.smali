.class public Lcom/broadcom/bt/app/settings/ServiceCfgActivity;
.super Landroid/preference/PreferenceActivity;
.source "ServiceCfgActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final SHOW_UNSUPPORTED_SVCS:Z = false

.field public static final TAG:Ljava/lang/String; = "ServiceCfgActivity"

.field private static final mSvcDisplayTitleId:[I

.field private static final mSvcNames:[Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 46
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_pbs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    .line 50
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xaet 0x5t 0x9t 0x7ft
        0xabt 0x5t 0x9t 0x7ft
        0xact 0x5t 0x9t 0x7ft
        0xadt 0x5t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initPrefs()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private initCheckboxPrefUI(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 205
    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 208
    const v0, 0x7f0905b0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 209
    const v0, 0x7f0905b1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 211
    return-void
.end method

.method private initPrefs()V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 88
    .local v2, prefScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 89
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    aget-object v3, v4, v0

    .line 91
    .local v3, svcName:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 94
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initCheckboxPrefUI(Landroid/preference/CheckBoxPreference;)V

    .line 98
    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->updateServicePref(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v3           #svcName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isServiceSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "svcName"

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 105
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceCfgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get service state for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 110
    goto :goto_0
.end method

.method private declared-synchronized setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "pref"
    .parameter "serviceName"
    .parameter "enable"

    .prologue
    .line 179
    monitor-enter p0

    const/4 v1, -0x1

    .line 180
    .local v1, returnState:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v2, :cond_0

    .line 181
    if-eqz p3, :cond_1

    .line 182
    const v2, 0x7f0905b3

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 183
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 186
    :cond_1
    const v2, 0x7f0905b2

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 187
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 192
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ServiceCfgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_2

    const-string v4, "enabled"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v4, "disabled"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private updateServicePref(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "svcName"

    .prologue
    const/4 v2, 0x0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v1, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, serviceState:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 224
    const v1, 0x7f0905b5

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 225
    const v1, 0x7f0905b5

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 234
    .end local v0           #serviceState:I
    :goto_0
    return-void

    .line 228
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0           #serviceState:I
    :catch_0
    move-exception v1

    goto :goto_0

    .restart local v0       #serviceState:I
    :cond_1
    move v1, v2

    .line 228
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->addPreferencesFromResource(I)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, svcMgrIntent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 159
    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 161
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, svcName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 163
    invoke-direct {p0, p1, v1, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z

    move-result v2

    .line 165
    :goto_1
    return v2

    .end local v0           #enable:Z
    .end local v1           #svcName:Ljava/lang/String;
    .restart local p2
    :cond_0
    move v0, v3

    .line 159
    goto :goto_0

    .end local p2
    .restart local v0       #enable:Z
    .restart local v1       #svcName:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 165
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 142
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 115
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 152
    return-void
.end method
