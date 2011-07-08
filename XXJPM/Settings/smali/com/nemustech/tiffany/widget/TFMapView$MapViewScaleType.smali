.class public final enum Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;
.super Ljava/lang/Enum;
.source "TFMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapViewScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

.field public static final enum CENTER:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

.field public static final enum CENTER_INSIDE:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

.field public static final enum FIT_XY:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 370
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v4, v3}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->FIT_XY:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    .line 374
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->CENTER:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    .line 379
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->CENTER_INSIDE:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    .line 365
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    sget-object v1, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->FIT_XY:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->CENTER:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->CENTER_INSIDE:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->$VALUES:[Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ni"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 382
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->nativeInt:I

    .line 383
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 365
    const-class v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    return-object p0
.end method

.method public static final values()[Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->$VALUES:[Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    invoke-virtual {v0}, [Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    return-object v0
.end method
