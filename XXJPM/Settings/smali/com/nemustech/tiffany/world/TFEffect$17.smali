.class Lcom/nemustech/tiffany/world/TFEffect$17;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectSink_FlexiblePanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFFlexiblePanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$17;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$17;->val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$17;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$17;->val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1465
    return-void
.end method
