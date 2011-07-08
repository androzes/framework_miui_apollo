.class public Lcom/nemustech/tiffany/world/TFEffectActivity;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"


# static fields
.field public static final BITMAP_FILENAME:Ljava/lang/String; = "capBitmap.png"

.field public static final CAPTURE_PACKAGE:Ljava/lang/String; = "com.nemustech.tiffany.world.keyPackage"

.field public static final EFFECT_ID:Ljava/lang/String; = "com.nemustech.tiffany.world.keyEffect"

.field private static final TAG:Ljava/lang/String; = "TFEffectActivity"


# instance fields
.field private mActivityFrom:Landroid/app/Activity;

.field private mActivityTo:Landroid/app/Activity;

.field private mBmpTo:Landroid/graphics/Bitmap;

.field private mEffectAnimationListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

.field private mEffectID:I

.field private mIntentFrom:Landroid/content/Intent;

.field private mTFConnectionFrom:Landroid/content/ServiceConnection;

.field private mTFConnectionTo:Landroid/content/ServiceConnection;

.field private mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

.field private mTFServiceTo:Lcom/nemustech/tiffany/world/ITFServiceTo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFEffectActivity$2;-><init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionFrom:Landroid/content/ServiceConnection;

    .line 173
    new-instance v0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFEffectActivity$3;-><init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionTo:Landroid/content/ServiceConnection;

    .line 190
    new-instance v0, Lcom/nemustech/tiffany/world/TFEffectActivity$4;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFEffectActivity$4;-><init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mEffectAnimationListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    .line 209
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

    .line 210
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceTo:Lcom/nemustech/tiffany/world/ITFServiceTo;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mBmpTo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mBmpTo:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mActivityTo:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/world/TFEffectActivity;)Lcom/nemustech/tiffany/world/ITFServiceTo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceTo:Lcom/nemustech/tiffany/world/ITFServiceTo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceTo;)Lcom/nemustech/tiffany/world/ITFServiceTo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceTo:Lcom/nemustech/tiffany/world/ITFServiceTo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->startEffect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionTo:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->captureBitmap(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->setupServiceTo(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFEffectActivity;)Lcom/nemustech/tiffany/world/ITFServiceFrom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceFrom;)Lcom/nemustech/tiffany/world/ITFServiceFrom;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mActivityFrom:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/world/TFEffectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mEffectID:I

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mIntentFrom:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->setupServiceFrom(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionFrom:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private captureBitmap(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "activity"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFEffectActivity;->cutStatusBarFromBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private setupServiceFrom(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nemustech/tiffany/world/ITFServiceFrom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionFrom:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupServiceTo(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nemustech/tiffany/world/ITFServiceTo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionTo:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startEffect(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 58
    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {v1, p1}, Lcom/nemustech/tiffany/world/TFEffect;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, effect:Lcom/nemustech/tiffany/world/TFEffect;
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mEffectAnimationListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/world/TFEffect;->setAnimationEventListener(Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 62
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.nemustech.tiffany.world.keyEffect"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, effectID:I
    const-string v5, "com.nemustech.tiffany.world.keyPackage"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, packageFrom:Ljava/lang/String;
    const-string v5, "capBitmap.png"

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/world/TFUtils;->loadBitmapFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, bmpFrom:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v1, v8, v0, v7}, Lcom/nemustech/tiffany/world/TFEffect;->addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mBmpTo:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mBmpTo:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-virtual {v1, v8, v5, v6}, Lcom/nemustech/tiffany/world/TFEffect;->addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    .line 74
    :cond_1
    invoke-virtual {v1, v2, v7}, Lcom/nemustech/tiffany/world/TFEffect;->showEffect(IZ)V

    .line 75
    return-void
.end method


# virtual methods
.method public closeEffectFrom(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFServiceFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom;

    invoke-interface {v1}, Lcom/nemustech/tiffany/world/ITFServiceFrom;->isBound()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mTFConnectionFrom:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 52
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected cutStatusBarFromBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "a"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 114
    .local v2, yOffset:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 115
    .local v3, w:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 116
    .local v8, h:I
    sub-int v4, v8, v2

    const/4 v5, 0x0

    move-object v0, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 117
    .local v7, cut:Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public startActivityFrom(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0
    .parameter "activity"
    .parameter "intent"
    .parameter "effectID"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->setupServiceFrom(Landroid/app/Activity;)Z

    .line 24
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mActivityFrom:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mIntentFrom:Landroid/content/Intent;

    .line 26
    iput p3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mEffectID:I

    .line 27
    return-void
.end method

.method public startActivityTo(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity;->mActivityTo:Landroid/app/Activity;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 33
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/nemustech/tiffany/world/TFEffectActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/nemustech/tiffany/world/TFEffectActivity$1;-><init>(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method
