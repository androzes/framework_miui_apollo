.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addHostRoute(Ljava/lang/String;I)I
.end method

.method public static configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "ipInfo"

    .prologue
    .line 97
    iget v1, p1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v2, p1, Landroid/net/DhcpInfo;->netmask:I

    iget v3, p1, Landroid/net/DhcpInfo;->gateway:I

    iget v4, p1, Landroid/net/DhcpInfo;->dns1:I

    iget v5, p1, Landroid/net/DhcpInfo;->dns2:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/net/NetworkUtils;->configureNative(Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method private static native configureNative(Ljava/lang/String;IIIII)Z
.end method

.method public static native disableIPv4LL()V
.end method

.method public static native disableInterface(Ljava/lang/String;)I
.end method

.method public static native enableIPv4LL()V
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static native getDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 118
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 125
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .local v0, addr:I
    move v4, v0

    .line 129
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v4

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native removeDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native removeHostRoutes(Ljava/lang/String;)I
.end method

.method public static native resetConnections(Ljava/lang/String;)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
.end method

.method public static native setDefaultRoute(Ljava/lang/String;I)I
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method
