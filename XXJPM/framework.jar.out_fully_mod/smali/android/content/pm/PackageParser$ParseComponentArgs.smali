.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;III)V
    .locals 0
    .parameter "_owner"
    .parameter "_outError"
    .parameter "_nameRes"
    .parameter "_labelRes"
    .parameter "_iconRes"
    .parameter "_sepProcesses"
    .parameter "_processRes"
    .parameter "_descriptionRes"
    .parameter "_enabledRes"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III)V

    .line 134
    iput-object p6, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 135
    iput p7, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 136
    iput p8, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 137
    iput p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 138
    return-void
.end method
