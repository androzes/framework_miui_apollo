.class Landroid/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountAuthenticatorCache$1;,
        Landroid/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Landroid/accounts/AccountAuthenticatorCache$1;)V

    sput-object v0, Landroid/accounts/AccountAuthenticatorCache;->sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 46
    const-string v0, "android.accounts.AccountAuthenticator"

    const-string v0, "android.accounts.AccountAuthenticator"

    const-string v4, "account-authenticator"

    sget-object v5, Landroid/accounts/AccountAuthenticatorCache;->sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .parameter "res"
    .parameter "packageName"
    .parameter "attrs"

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 56
    .local v7, sa:Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, accountType:Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 60
    .local v3, labelId:I
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 62
    .local v4, iconId:I
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 64
    .local v5, smallIconId:I
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 66
    .local v6, prefId:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #labelId:I
    .end local v4           #iconId:I
    .end local v5           #smallIconId:I
    .end local v6           #prefId:I
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method
