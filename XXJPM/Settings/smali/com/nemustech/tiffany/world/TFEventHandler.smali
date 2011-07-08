.class public Lcom/nemustech/tiffany/world/TFEventHandler;
.super Ljava/lang/Object;
.source "TFEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFEventHandler"


# instance fields
.field private mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

.field public mTouchListener:Landroid/view/View$OnTouchListener;

.field private mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;Lcom/nemustech/tiffany/world/TFRenderer;)V
    .locals 1
    .parameter "world"
    .parameter "renderer"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/nemustech/tiffany/world/TFEventHandler$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFEventHandler$1;-><init>(Lcom/nemustech/tiffany/world/TFEventHandler;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 25
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEventHandler;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 26
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEventHandler;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFEventHandler;)Lcom/nemustech/tiffany/world/TFRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEventHandler;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    return-object v0
.end method
