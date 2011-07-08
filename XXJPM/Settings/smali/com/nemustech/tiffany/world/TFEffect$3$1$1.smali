.class Lcom/nemustech/tiffany/world/TFEffect$3$1$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nemustech/tiffany/world/TFEffect$3$1;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$3$1;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1002(Lcom/nemustech/tiffany/world/TFEffect;Z)Z

    .line 297
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$3$1;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1102(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFWorld;

    .line 298
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$3$1;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1202(Lcom/nemustech/tiffany/world/TFEffect;Z)Z

    .line 299
    return-void
.end method
