.class public Lcom/nemustech/tiffany/world/TFService;
.super Landroid/app/Service;
.source "TFService.java"


# static fields
.field private static final HIDE_IMAGE_VIEW_MSG:I = 0x3

.field private static final SET_IMAGE_MSG:I = 0x1

.field private static final SHOW_IMAGE_VIEW_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFService"

.field private static mImageView:Landroid/widget/ImageView;

.field private static mSetView:Z


# instance fields
.field private mFromFileName:Ljava/lang/String;

.field private mFromPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBoundFrom:Z

.field private mIsBoundTo:Z

.field private final mTiffanyBinderFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;

.field private final mTiffanyBinderTo:Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;

.field private mWindowMgr:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nemustech/tiffany/world/TFService;->mSetView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/nemustech/tiffany/world/TFService$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFService$1;-><init>(Lcom/nemustech/tiffany/world/TFService;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/nemustech/tiffany/world/TFService$2;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFService$2;-><init>(Lcom/nemustech/tiffany/world/TFService;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mTiffanyBinderFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;

    .line 72
    new-instance v0, Lcom/nemustech/tiffany/world/TFService$3;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFService$3;-><init>(Lcom/nemustech/tiffany/world/TFService;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mTiffanyBinderTo:Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;

    .line 155
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundFrom:Z

    .line 156
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundTo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mFromPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/world/TFService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFService;->mFromPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mFromFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nemustech/tiffany/world/TFService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFService;->mFromFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nemustech/tiffany/world/TFService;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundFrom:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/TFService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundTo:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 91
    const-class v0, Lcom/nemustech/tiffany/world/ITFServiceFrom;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundFrom:Z

    .line 94
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mTiffanyBinderFrom:Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-class v0, Lcom/nemustech/tiffany/world/ITFServiceTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundTo:Z

    .line 100
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService;->mTiffanyBinderTo:Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    const/4 v4, 0x0

    .line 123
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    sget-boolean v2, Lcom/nemustech/tiffany/world/TFService;->mSetView:Z

    if-nez v2, :cond_0

    .line 126
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFService;->mWindowMgr:Landroid/view/WindowManager;

    .line 127
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/nemustech/tiffany/world/TFService;->mImageView:Landroid/widget/ImageView;

    .line 129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const/4 v5, -0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 134
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "TiffanyWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFService;->mWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 138
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFService;->mWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {p0}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 141
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFService;->mWindowMgr:Landroid/view/WindowManager;

    sget-object v2, Lcom/nemustech/tiffany/world/TFService;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sget-object v1, Lcom/nemustech/tiffany/world/TFService;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nemustech/tiffany/world/TFService;->mSetView:Z

    .line 145
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 108
    const-class v0, Lcom/nemustech/tiffany/world/ITFServiceFrom;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundFrom:Z

    .line 113
    :cond_0
    const-class v0, Lcom/nemustech/tiffany/world/ITFServiceTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFService;->mIsBoundTo:Z

    .line 118
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
