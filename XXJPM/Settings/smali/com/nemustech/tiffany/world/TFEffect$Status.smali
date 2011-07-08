.class Lcom/nemustech/tiffany/world/TFEffect$Status;
.super Ljava/lang/Object;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final BROADCAST:I = 0x3

.field public static final DONE:I = 0x2

.field public static final NONE:I


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$Status;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
