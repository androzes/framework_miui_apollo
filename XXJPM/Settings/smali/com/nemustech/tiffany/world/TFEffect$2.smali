.class Lcom/nemustech/tiffany/world/TFEffect$2;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V
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
    .line 270
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$2;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$2;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$200(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$2;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$000(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$2;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$100(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;->onAnimationEnd(IZ)V

    .line 272
    return-void
.end method
