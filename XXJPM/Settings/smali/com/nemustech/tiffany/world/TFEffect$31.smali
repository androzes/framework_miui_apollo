.class Lcom/nemustech/tiffany/world/TFEffect$31;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$nextPage:Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$31;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$31;->val$nextPage:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 2044
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/nemustech/tiffany/world/TFModel;

    .line 2045
    .local v0, modelsToDelete:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$31;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2046
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$31;->val$nextPage:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 2047
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$31;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    .line 2048
    return-void
.end method
