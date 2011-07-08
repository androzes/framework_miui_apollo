.class public Landroid/net/vpn/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# static fields
.field private static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field private static final ACTION_VPN_SERVICE:Ljava/lang/String; = null

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = null

.field public static final BROADCAST_CONNECTION_STATE:Ljava/lang/String; = "connection_state"

.field public static final BROADCAST_ERROR_CODE:Ljava/lang/String; = "err"

.field public static final BROADCAST_PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = null

.field public static final PROFILES_PATH:Ljava/lang/String; = "/misc/vpn/profiles"

.field public static final TAG:Ljava/lang/String; = null

.field public static final VPN_ERROR_AUTH:I = 0x33

.field public static final VPN_ERROR_CHALLENGE:I = 0x5

.field public static final VPN_ERROR_CONNECTION_FAILED:I = 0x65

.field public static final VPN_ERROR_CONNECTION_LOST:I = 0x67

.field public static final VPN_ERROR_LARGEST:I = 0xc8

.field public static final VPN_ERROR_NO_ERROR:I = 0x0

.field public static final VPN_ERROR_PPP_NEGOTIATION_FAILED:I = 0x2a

.field public static final VPN_ERROR_REMOTE_HUNG_UP:I = 0x7

.field public static final VPN_ERROR_REMOTE_PPP_HUNG_UP:I = 0x30

.field public static final VPN_ERROR_UNKNOWN_SERVER:I = 0x66


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v2, Landroid/net/vpn/VpnManager;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/vpn/VpnManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    .line 84
    const-class v0, Landroid/net/vpn/VpnManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public static getProfilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/vpn/profiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVpnTypes()[Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/net/vpn/VpnType;->values()[Landroid/net/vpn/VpnType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindVpnService(Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to connect to VPN service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 159
    :goto_0
    return v0

    .line 158
    :cond_0
    sget-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "succeeded to connect to VPN service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    .locals 1
    .parameter "profileName"
    .parameter "s"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 166
    return-void
.end method

.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V
    .locals 2
    .parameter "profileName"
    .parameter "s"
    .parameter "error"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "vpn.connectivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "profile_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "connection_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    if-eqz p3, :cond_0

    .line 175
    const-string v1, "err"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public createSettingsActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "type"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;
    .locals 4
    .parameter "type"
    .parameter "customized"

    .prologue
    const/4 v3, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/net/vpn/VpnType;->getProfileClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 127
    .local v1, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1, p2}, Landroid/net/vpn/VpnProfile;->setCustomized(Z)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    .line 132
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InstantiationException;
    move-object v2, v3

    .line 130
    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .line 132
    goto :goto_0
.end method

.method public registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method public startSettingsActivity()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public startVpnService()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void
.end method

.method public stopVpnService()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 148
    return-void
.end method

.method public unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 187
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void
.end method
