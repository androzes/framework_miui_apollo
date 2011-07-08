.class public Lcom/nemustech/tiffany/world/TFEffect$Transition;
.super Ljava/lang/Object;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Transition"
.end annotation


# static fields
.field public static final ASKEW:I = 0x5

.field public static final CENTER_ZOOM:I = 0x12

.field public static final COLUMN:I = 0x6

.field public static final CUBE:I = 0x9

.field public static final DIAGONAL_FLING:I = 0xe

.field public static final DIAGONAL_SCALE:I = 0xf

.field public static final EFFECT_MAX:I = 0x17

.field public static final ENTRANCE:I = 0x4

.field public static final FLIP:I = 0x0

.field public static final GENIE:I = 0x14

.field public static final LINE_ZOOM:I = 0x13

.field public static final MOSAIC:I = 0x1

.field public static final PAGEOVER_BY_ANGLE:I = 0xb

.field public static final PAGE_CURL:I = 0x15

.field public static final PAGE_CURL_TRANS:I = 0x16

.field public static final PROJECTOR_BOARD_DOWN:I = 0x11

.field public static final PROJECTOR_BOARD_UP:I = 0x10

.field public static final REPLACE:I = 0x2

.field public static final REVOLVING:I = 0x3

.field public static final ROW:I = 0x7

.field public static final SINK:I = 0xc

.field public static final STICKER:I = 0xd

.field public static final TWIST:I = 0x8

.field public static final VPAGEOVER:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$Transition;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
