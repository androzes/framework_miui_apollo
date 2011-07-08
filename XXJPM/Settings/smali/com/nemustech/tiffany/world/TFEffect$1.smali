.class Lcom/nemustech/tiffany/world/TFEffect$1;
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

.field final synthetic val$modelsToDetach:[Lcom/nemustech/tiffany/world/TFModel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$1;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$1;->val$modelsToDetach:[Lcom/nemustech/tiffany/world/TFModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$1;->val$modelsToDetach:[Lcom/nemustech/tiffany/world/TFModel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$1;->val$modelsToDetach:[Lcom/nemustech/tiffany/world/TFModel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFModel;->deleteAllImageResource()V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method
