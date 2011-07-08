.class abstract Landroid/location/LocationManager$LpComparator;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LpComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/location/LocationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Landroid/location/LocationManager$LpComparator;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpComparator;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method public compare(FF)I
    .locals 1
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 375
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 376
    const/4 v0, -0x1

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compare(II)I
    .locals 1
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 365
    if-ge p1, p2, :cond_0

    .line 366
    const/4 v0, -0x1

    .line 370
    :goto_0
    return v0

    .line 367
    :cond_0
    if-le p1, p2, :cond_1

    .line 368
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
