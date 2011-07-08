.class Lcom/nemustech/tiffany/world/TFEffect$12$1$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$12$1;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$12$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;->detachFrom(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 1118
    const/4 v1, 0x4

    new-array v0, v1, [Lcom/nemustech/tiffany/world/TFModel;

    .line 1119
    .local v0, modelsToDelete:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1120
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1121
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1122
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1123
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;->this$2:Lcom/nemustech/tiffany/world/TFEffect$12$1;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$12;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1124
    return-void
.end method
