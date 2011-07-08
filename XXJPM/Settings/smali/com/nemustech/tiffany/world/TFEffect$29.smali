.class Lcom/nemustech/tiffany/world/TFEffect$29;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageCurlTrans(ZIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$29;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$29;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$29;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1965
    return-void
.end method
