package com.android.launcher2; class Launcher {/*

.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;,
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

.field private mChangeWallpaperButton:Landroid/view/View;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/android/launcher2/DeleteZone;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDragLayerBackground:Landroid/widget/ImageView;

.field private mEditPanel:Landroid/view/ViewGroup;

.field private mEditingState:I

.field private mErrorBar:Lcom/android/launcher2/ErrorBar;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeats:Lcom/android/launcher2/HotSeats;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mIsScreenOff:Z

.field private mLastPausedTime:J

.field mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeExpectedForActivityResult:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShrinkToBottomSlow:Landroid/view/animation/Animation;

.field private mShrinkToTop:Landroid/view/animation/Animation;

.field private mShrinkToTopSlow:Landroid/view/animation/Animation;

.field private mStretchFromBottomSlow:Landroid/view/animation/Animation;

.field private mStretchFromTop:Landroid/view/animation/Animation;

.field private mStretchFromTopSlow:Landroid/view/animation/Animation;

.field private mWaitingForResult:Z

.field private final mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetBox:Landroid/view/ViewGroup;

.field private mWidgetBoxEntry:Landroid/view/View;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

.field private mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

.field private refreshing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    .line 90
    #v2=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    #p0=(Reference);
    new-instance v0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;

    #v0=(UninitRef);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    #v0=(UninitRef);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;

    #v0=(UninitRef);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 174
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 176
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 178
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsScreenOff:Z

    .line 179
    iput v2, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    #v0=(UninitRef);
    new-instance v1, Landroid/os/Handler;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 494
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 1658
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->refreshing:Z

    .line 1845
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 564
    const-string v1, "input_method"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 566
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->onResumeOrPauseGadget(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->pickShortcut()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBoxEntry:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    return-void
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V

    .line 1040
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1171
    #v9=(Null);
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1172
    const-string v2, "android.intent.extra.livefolder.NAME"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1177
    #v4=(Reference);
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1178
    #v3=(Reference);
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1180
    :try_start_0
    move-object v0, v3

    #v0=(Reference);
    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :try_start_1
    #v2=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1182
    #v5=(Reference);
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1184
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1185
    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    #v10=(Reference);
    move-object v2, v3

    move-object v3, v10

    .line 1191
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    if-nez v2, :cond_0

    .line 1192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f020067

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 1195
    :goto_1
    #v5=(Reference);
    new-instance v2, Lcom/android/launcher2/LiveFolderInfo;

    #v2=(UninitRef);
    invoke-direct {v2}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1196
    #v2=(Reference);
    invoke-static {v5, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1197
    iput-object v4, v2, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1198
    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1199
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1200
    iput-object v1, v2, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1201
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    iput v1, v2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 1204
    const-wide/16 v3, -0x64

    #v3=(LongLo);v4=(LongHi);
    iget-wide v5, p2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v5=(LongLo);v6=(LongHi);
    iget v7, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v7=(Integer);
    iget v8, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v8=(Integer);
    move-object v1, p0

    #v1=(Reference);
    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1206
    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/android/launcher2/LiveFolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    return-object v2

    .line 1186
    :catch_0
    #v0=(Reference);v2=(Boolean);v4=(Reference);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    move-exception v2

    #v2=(Reference);
    move-object v2, v9

    .line 1187
    :goto_2
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const-string v5, "Launcher"

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Could not load live folder icon: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    #v2=(Null);
    goto :goto_0

    .line 1186
    :catch_1
    #v2=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v5

    #v5=(Reference);
    goto :goto_2

    :cond_0
    #v0=(Conflicted);v5=(Conflicted);v10=(Conflicted);
    move-object v5, v2

    #v5=(Reference);
    goto :goto_1

    :cond_1
    #v0=(Uninit);v2=(Conflicted);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    move-object v3, v9

    #v3=(Null);
    move-object v2, v9

    #v2=(Null);
    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    .line 260
    new-instance v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    #v3=(UninitRef);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-direct {v3, v9}, Lcom/android/launcher2/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 261
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    #v3=(Reference);
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 265
    .local v0, configuration:Landroid/content/res/Configuration;
    #v0=(Reference);
    iget-object v6, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 266
    .local v6, previousLocale:Ljava/lang/String;
    #v6=(Reference);
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, locale:Ljava/lang/String;
    #v1=(Reference);
    iget v7, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 269
    .local v7, previousMcc:I
    #v7=(Integer);
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 271
    .local v4, mcc:I
    #v4=(Integer);
    iget v8, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 272
    .local v8, previousMnc:I
    #v8=(Integer);
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 274
    .local v5, mnc:I
    #v5=(Integer);
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_0

    if-ne v4, v7, :cond_0

    if-eq v5, v8, :cond_2

    :cond_0
    const/4 v9, 0x1

    #v9=(One);
    move v2, v9

    .line 276
    .local v2, localeChanged:Z
    :goto_0
    #v2=(Boolean);v9=(Boolean);
    if-eqz v2, :cond_1

    .line 277
    iput-object v1, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 278
    iput v4, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 279
    iput v5, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 281
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 282
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    #v9=(Reference);
    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 284
    :cond_1
    #v9=(Conflicted);
    return-void

    .line 274
    .end local v2           #localeChanged:Z
    :cond_2
    #v2=(Uninit);v9=(Boolean);
    const/4 v9, 0x0

    #v9=(Null);
    move v2, v9

    #v2=(Null);
    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 600
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 602
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 15
    .parameter "data"

    .prologue
    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 744
    .local v12, extras:Landroid/os/Bundle;
    #v12=(Reference);
    const-string v0, "appWidgetId"

    #v0=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 748
    .local v9, appWidgetId:I
    #v9=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 751
    .local v10, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    #v10=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/CellLayout;

    .line 752
    .local v13, layout:Lcom/android/launcher2/CellLayout;
    iget v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #v0=(Integer);
    iget v1, v10, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #v1=(Integer);
    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/CellLayout;->rectToCell(II)[I

    move-result-object v14

    .line 755
    .local v14, spans:[I
    #v14=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aget v0, v14, v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    aget v1, v14, v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v11

    .line 756
    .local v11, cellinfo:Lcom/android/launcher2/CellLayout$CellInfo;
    #v11=(Reference);
    if-nez v11, :cond_1

    .line 757
    const/4 v0, -0x1

    #v0=(Byte);
    if-eq v9, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    #v0=(Reference);
    invoke-virtual {v0, v9}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 780
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 762
    :cond_1
    #v0=(Integer);v1=(Integer);v2=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    #v1=(UninitRef);
    invoke-direct {v1, v9}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 763
    .local v1, launcherInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    #v1=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aget v0, v14, v0

    #v0=(Integer);
    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 764
    const/4 v0, 0x1

    #v0=(One);
    aget v0, v14, v0

    #v0=(Integer);
    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 766
    const-wide/16 v2, -0x64

    #v2=(LongLo);v3=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    iget v6, v11, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v6=(Integer);
    iget v7, v11, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v7=(Integer);
    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 770
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, v9, v10}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 775
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v9, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 776
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 778
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    iget-object v3, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    #v3=(Reference);
    iget v4, v11, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v4=(Integer);
    iget v5, v11, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v5=(Integer);
    iget v6, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v7, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v8

    #v8=(Boolean);
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1157
    #v4=(One);
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v3

    .line 1158
    #v3=(Reference);
    if-nez v3, :cond_0

    .line 1166
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1160
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Reference);v5=(Uninit);v6=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v3, v0}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v1

    .line 1162
    #v1=(Reference);
    const v2, 0x7f030016

    #v2=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v1

    .line 1164
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    #v6=(Boolean);
    move v5, v4

    #v5=(One);
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 725
    #v4=(One);
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v7

    .line 726
    .local v7, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 733
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-void

    .line 728
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    #v0=(Reference);
    invoke-virtual {v0, p0, p1, v7}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v8

    .line 729
    .local v8, info:Lcom/android/launcher2/ShortcutInfo;
    #v8=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    .line 731
    .local v1, shortcut:Landroid/view/View;
    #v1=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v2=(Integer);
    iget v3, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    #v6=(Boolean);
    move v5, v4

    #v5=(One);
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 715
    const v0, 0x7f030001

    #v0=(Integer);
    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/ShortcutIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 698
    const v0, 0x7f030007

    #v0=(Integer);
    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    .line 699
    #v0=(Reference);
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 702
    :cond_0
    return-object v0
.end method

.method private findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1
    .parameter "showError"

    .prologue
    const/4 v0, 0x1

    .line 1212
    #v0=(One);
    invoke-direct {p0, v0, v0, p1}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    .line 1216
    #v2=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1217
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1236
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 1221
    :cond_0
    #v1=(Null);v2=(Null);v3=(Uninit);
    invoke-virtual {v0, v2, v2, p1, p2}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII)[I

    move-result-object v0

    .line 1222
    if-nez v0, :cond_2

    .line 1223
    if-eqz p3, :cond_1

    .line 1224
    const v0, 0x7f0c0018

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showError(I)V

    :cond_1
    #v0=(Conflicted);
    move-object v0, v1

    .line 1226
    #v0=(Null);
    goto :goto_0

    .line 1229
    :cond_2
    #v0=(Reference);
    new-instance v1, Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    .line 1230
    #v1=(Reference);
    aget v2, v0, v2

    #v2=(Integer);
    iput v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 1231
    const/4 v2, 0x1

    #v2=(One);
    aget v0, v0, v2

    #v0=(Integer);
    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 1232
    iput p1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 1233
    iput p2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 1234
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    move-object v0, v1

    .line 1236
    goto :goto_0
.end method

.method private getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;
    .locals 10
    .parameter "data"

    .prologue
    .line 361
    const/4 v5, 0x0

    .line 363
    .local v5, result:Lcom/android/launcher2/UserFolder;
    #v5=(Null);
    if-eqz p1, :cond_1

    .line 364
    const-string v7, "com.android.settings.ConfirmLockPattern.extra_tag"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 365
    .local v6, tag:Landroid/os/Bundle;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 366
    const-string v7, "favorites._id"

    const-wide/16 v8, -0x1

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 367
    .local v2, folderId:J
    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v2, v7

    #v7=(Byte);
    if-ltz v7, :cond_1

    .line 368
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    #v1=(Conflicted);v4=(Reference);v7=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/Folder;

    .line 369
    .local v1, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    #v7=(Reference);
    iget-wide v7, v7, Lcom/android/launcher2/FolderInfo;->id:J

    #v7=(LongLo);
    cmp-long v7, v7, v2

    #v7=(Byte);
    if-nez v7, :cond_0

    instance-of v7, v1, Lcom/android/launcher2/UserFolder;

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 371
    move-object v0, v1

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/UserFolder;

    move-object v5, v0

    .line 379
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    .end local v2           #folderId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #tag:Landroid/os/Bundle;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v5
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 4
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v3, 0x0

    .line 1421
    #v3=(Null);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isScrolling()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1437
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1424
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-boolean v1, p1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v1, :cond_2

    .line 1426
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    .line 1428
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1431
    :cond_2
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1432
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    #v1=(Boolean);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    goto :goto_0

    :cond_3
    #v1=(Reference);
    move v1, v3

    #v1=(Null);
    goto :goto_1
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1343
    return-void
.end method

.method private onResumeOrPauseGadget(Z)V
    .locals 8
    .parameter "resume"

    .prologue
    .line 506
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    if-ltz v2, :cond_2

    .line 507
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 508
    .local v1, gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 510
    .local v3, info:Lcom/android/launcher2/gadget/GadgetInfo;
    if-eqz p1, :cond_1

    .line 511
    iget-wide v4, v3, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v4=(LongLo);v5=(LongHi);
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-nez v4, :cond_0

    .line 512
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 506
    :cond_0
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 516
    :cond_1
    #v4=(Reference);
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 519
    .end local v1           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method private openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 11
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v6, 0x4

    #v6=(PosByte);
    const/4 v4, 0x0

    .line 1447
    #v4=(Null);
    const/4 v1, 0x0

    .line 1448
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    #v1=(Null);
    const/4 v8, 0x1

    .line 1449
    .local v8, needBind:Z
    #v8=(One);
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 1450
    invoke-virtual {p1}, Lcom/android/launcher2/FolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1451
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 1452
    invoke-static {p0}, Lcom/android/launcher2/UserFolder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 1453
    invoke-virtual {p1, v1}, Lcom/android/launcher2/FolderInfo;->setFolderCache(Lcom/android/launcher2/Folder;)V

    .line 1463
    :cond_0
    :goto_0
    #v0=(Conflicted);v8=(Boolean);
    if-nez v1, :cond_3

    .line 1481
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 1455
    :cond_1
    #v0=(Boolean);v2=(Uninit);v3=(Uninit);v5=(Uninit);v7=(Uninit);v8=(One);v9=(Uninit);v10=(Uninit);
    iget-object v0, v1, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 1456
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 1457
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_0

    .line 1459
    :cond_2
    #v0=(Boolean);v1=(Null);v8=(One);
    instance-of v0, p1, Lcom/android/launcher2/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 1460
    invoke-static {p0, p1}, Lcom/android/launcher2/LiveFolder;->fromXml(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/LiveFolder;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0

    .line 1467
    :cond_3
    #v0=(Conflicted);v8=(Boolean);
    if-eqz v8, :cond_4

    .line 1468
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 1469
    invoke-virtual {v1, p0}, Lcom/android/launcher2/Folder;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1470
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 1473
    :cond_4
    #v0=(Conflicted);
    invoke-virtual {v1, p2}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 1475
    iget-wide v2, p1, Lcom/android/launcher2/FolderInfo;->container:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v9, -0x65

    #v9=(LongLo);v10=(LongHi);
    cmp-long v0, v2, v9

    #v0=(Byte);
    if-nez v0, :cond_5

    .line 1476
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher2/FolderInfo;->screenId:J

    .line 1479
    :cond_5
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    iget-wide v2, p1, Lcom/android/launcher2/FolderInfo;->screenId:J

    move v5, v4

    #v5=(Null);
    move v7, v6

    #v7=(PosByte);
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1480
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    goto :goto_1
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 1695
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.PICK_ACTIVITY"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1696
    #v0=(Reference);
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1697
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0c001c

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1699
    const/4 v1, 0x7

    #v1=(PosByte);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1700
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    #v0=(Null);
    new-instance v1, Ljava/io/DataInputStream;

    #v1=(UninitRef);
    const-string v2, "launcher.preferences"

    #v2=(Reference);
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 296
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 297
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    #v2=(Integer);
    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 298
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 304
    if-eqz v1, :cond_2

    .line 306
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 312
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 307
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    #v0=(Null);v1=(Reference);v2=(Integer);
    move-exception v2

    #v2=(Reference);
    move-object v0, v1

    .line 309
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    #v0=(Reference);
    goto :goto_0

    .line 299
    :catch_1
    #v0=(Null);v1=(Conflicted);v2=(Conflicted);
    move-exception v2

    .line 304
    :goto_1
    #v0=(Reference);v2=(Reference);
    if-eqz v0, :cond_0

    .line 306
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 307
    :catch_2
    move-exception v2

    goto :goto_0

    .line 301
    :catch_3
    #v0=(Null);v2=(Conflicted);
    move-exception v2

    .line 304
    :goto_2
    #v0=(Reference);v2=(Reference);
    if-eqz v0, :cond_0

    .line 306
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 307
    :catch_4
    move-exception v2

    goto :goto_0

    .line 304
    :catchall_0
    #v0=(Null);v2=(Conflicted);
    move-exception v2

    :goto_3
    #v0=(Reference);v2=(Reference);
    if-eqz v0, :cond_1

    .line 306
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 309
    :cond_1
    :goto_4
    #v3=(Conflicted);
    throw v2

    .line 307
    :catch_5
    #v3=(Uninit);
    move-exception v3

    #v3=(Reference);
    goto :goto_4

    .line 304
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    #v0=(Null);v1=(Reference);v2=(Conflicted);v3=(Uninit);
    move-exception v2

    #v2=(Reference);
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    #v0=(Reference);
    goto :goto_3

    .line 301
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    #v0=(Null);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    #v0=(Reference);
    goto :goto_2

    .line 299
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    #v0=(Null);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    #v0=(Reference);
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    #v0=(Null);v2=(Integer);
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    #v0=(Reference);
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1264
    #v3=(One);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1265
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    #v2=(Reference);
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1267
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1269
    return-void
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 350
    const-string v5, "wallpaper"

    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/app/WallpaperManager;

    .line 352
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 353
    .local v0, display:Landroid/view/Display;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    #v6=(Integer);
    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    #v5=(One);
    move v2, v5

    .line 355
    .local v2, isPortrait:Z
    :goto_0
    #v2=(Boolean);v5=(Boolean);
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    #v5=(Integer);
    move v3, v5

    .line 356
    .local v3, width:I
    :goto_1
    #v3=(Integer);
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 357
    .local v1, height:I
    :goto_2
    #v1=(Integer);
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 358
    return-void

    .line 353
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    move v2, v5

    #v2=(Null);
    goto :goto_0

    .line 355
    .restart local v2       #isPortrait:Z
    :cond_1
    #v2=(Boolean);v5=(Boolean);
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    #v5=(Integer);
    move v3, v5

    #v3=(Integer);
    goto :goto_1

    .line 356
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    #v1=(Integer);
    goto :goto_2
.end method

.method private setupAnimations()V
    .locals 1

    .prologue
    .line 671
    const v0, 0x7f040002

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFadeIn:Landroid/view/animation/Animation;

    .line 672
    const v0, 0x7f040005

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFadeOut:Landroid/view/animation/Animation;

    .line 674
    const v0, 0x7f04000a

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mShrinkToTop:Landroid/view/animation/Animation;

    .line 675
    const v0, 0x7f04000e

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStretchFromTop:Landroid/view/animation/Animation;

    .line 676
    const v0, 0x7f04000b

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mShrinkToTopSlow:Landroid/view/animation/Animation;

    .line 677
    const v0, 0x7f04000f

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStretchFromTopSlow:Landroid/view/animation/Animation;

    .line 679
    const v0, 0x7f040009

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mShrinkToBottomSlow:Landroid/view/animation/Animation;

    .line 680
    const v0, 0x7f04000d

    #v0=(Integer);
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStretchFromBottomSlow:Landroid/view/animation/Animation;

    .line 681
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 608
    #v3=(One);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 610
    #v1=(Reference);
    const v0, 0x7f080031

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/DragLayer;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 611
    const v0, 0x7f080032

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 615
    const v0, 0x7f08003b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    .line 616
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setWholeAnimationCacheEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f08003c

    #v2=(Integer);
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteZone;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    const v2, 0x7f08003e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mChangeWallpaperButton:Landroid/view/View;

    .line 619
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mChangeWallpaperButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    const v2, 0x7f08003d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBoxEntry:Landroid/view/View;

    .line 621
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBoxEntry:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    const v0, 0x7f080037

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBox:Landroid/view/ViewGroup;

    .line 623
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBox:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setWholeAnimationCacheEnabled(Z)V

    .line 625
    const v0, 0x7f080038

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/WidgetThumbnailView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    .line 626
    new-instance v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    .line 627
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 628
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetThumbnailView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 631
    const v0, 0x7f08003a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ErrorBar;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    .line 633
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f080033

    #v2=(Integer);
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 634
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 635
    #v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    #v0=(Reference);
    const v3, 0x7f080034

    #v3=(Integer);
    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WorkspaceThumbnailView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    .line 639
    const v0, 0x7f080039

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/WorkspaceEditingPreview;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    .line 640
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v3=(Reference);
    invoke-virtual {v0, v3}, Lcom/android/launcher2/WorkspaceEditingPreview;->setSourceView(Landroid/widget/ScreenView;)V

    .line 641
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 643
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 644
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 645
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 646
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setThumbnailView(Lcom/android/launcher2/WorkspaceThumbnailView;)V

    .line 647
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setEditingPreview(Lcom/android/launcher2/WorkspaceEditingPreview;)V

    .line 649
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DeleteZone;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 650
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteZone;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 652
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f080035

    #v3=(Integer);
    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HotSeats;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    .line 653
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HotSeats;->setLaucher(Lcom/android/launcher2/Launcher;)V

    .line 654
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 656
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 657
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->setDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 658
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 659
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 663
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 664
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 665
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 667
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupAnimations()V

    .line 668
    return-void
.end method

.method private showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 1690
    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1691
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 1692
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    #v2=(PosByte);
    const/4 v4, 0x0

    .line 1590
    #v4=(Null);
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->showStatusBar(Z)V

    .line 1592
    if-eqz p1, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mChangeWallpaperButton:Landroid/view/View;

    #v0=(Reference);
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBoxEntry:Landroid/view/View;

    if-eqz p2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    #v0=(Reference);
    if-eqz p1, :cond_4

    move v1, v4

    :goto_3
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStretchFromTop:Landroid/view/animation/Animation;

    :goto_4
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1606
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditPanel:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/launcher2/Launcher$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    #v1=(Reference);
    const-wide/16 v2, 0x190

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1615
    if-eqz p2, :cond_6

    .line 1625
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(PosByte);v3=(Uninit);
    move v0, v4

    .line 1590
    #v0=(Null);
    goto :goto_0

    :cond_2
    #v0=(Reference);
    move v1, v4

    .line 1593
    #v1=(Null);
    goto :goto_1

    :cond_3
    #v1=(PosByte);
    move v1, v4

    .line 1594
    #v1=(Null);
    goto :goto_2

    :cond_4
    #v1=(Conflicted);
    move v1, v2

    .line 1597
    #v1=(PosByte);
    goto :goto_3

    .line 1598
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mShrinkToTop:Landroid/view/animation/Animation;

    #v1=(Reference);
    goto :goto_4

    .line 1617
    :cond_6
    #v2=(LongLo);v3=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1618
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    move v1, v4

    :goto_6
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFadeIn:Landroid/view/animation/Animation;

    :goto_7
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1620
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    .line 1623
    :goto_8
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0b0007

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    .line 1624
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    #v2=(Reference);
    invoke-virtual {v2, v1, v0, v1, v4}, Lcom/android/launcher2/ErrorBar;->setMargins(IIII)V

    goto :goto_5

    .line 1618
    :cond_7
    #v0=(Reference);v2=(LongLo);
    const/4 v1, 0x4

    #v1=(PosByte);
    goto :goto_6

    .line 1619
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFadeOut:Landroid/view/animation/Animation;

    #v1=(Reference);
    goto :goto_7

    .line 1620
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    goto :goto_8
.end method

.method private showNotifications()V
    .locals 1

    .prologue
    .line 1240
    const-string v0, "statusbar"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 1241
    if-eqz p0, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expand()V

    .line 1244
    :cond_0
    return-void
.end method

.method private showStatusBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1582
    .local v1, launcherWindow:Landroid/view/Window;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1583
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    #v0=(Reference);
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #v2=(Integer);
    and-int/lit16 v2, v2, -0x401

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1586
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1587
    return-void

    .line 1583
    :cond_0
    #v2=(Uninit);
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #v2=(Integer);
    or-int/lit16 v2, v2, 0x400

    goto :goto_0
.end method

.method private showWidgetBox(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1628
    #v3=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/WorkspaceEditingPreview;->show(Z)V

    .line 1630
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBox:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBox:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStretchFromTopSlow:Landroid/view/animation/Animation;

    :goto_1
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1633
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mShrinkToBottomSlow:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1634
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    :goto_3
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1636
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    .line 1637
    #v0=(Integer);
    if-eqz p1, :cond_4

    move v1, v3

    .line 1639
    :goto_4
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    #v2=(Reference);
    invoke-virtual {v2, v1, v0, v1, v3}, Lcom/android/launcher2/ErrorBar;->setMargins(IIII)V

    .line 1644
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetBoxEntry:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1645
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mChangeWallpaperButton:Landroid/view/View;

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :goto_5
    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1647
    if-eqz p1, :cond_6

    .line 1648
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1652
    :goto_6
    #v1=(Integer);
    return-void

    .line 1630
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    const/4 v1, 0x4

    #v1=(PosByte);
    goto :goto_0

    .line 1631
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mShrinkToTopSlow:Landroid/view/animation/Animation;

    #v1=(Reference);
    goto :goto_1

    .line 1633
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStretchFromBottomSlow:Landroid/view/animation/Animation;

    goto :goto_2

    :cond_3
    move v1, v3

    .line 1634
    #v1=(Null);
    goto :goto_3

    .line 1637
    :cond_4
    #v0=(Integer);v1=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0b0007

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    goto :goto_4

    :cond_5
    #v0=(Reference);v2=(Reference);
    move v1, v3

    .line 1645
    #v1=(Null);
    goto :goto_5

    .line 1650
    :cond_6
    #v1=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method

.method private sortDesktopItems()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method private startWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1788
    #v7=(Null);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v5, "android.intent.action.SET_WALLPAPER"

    #v5=(Reference);
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v2, pickWallpaper:Landroid/content/Intent;
    #v2=(Reference);
    const v5, 0x7f0c0021

    #v5=(Integer);
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1791
    .local v0, chooser:Landroid/content/Intent;
    #v0=(Reference);
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/app/WallpaperManager;

    .line 1793
    .local v4, wm:Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 1794
    .local v3, wi:Landroid/app/WallpaperInfo;
    #v3=(Reference);
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1795
    new-instance v1, Landroid/content/pm/LabeledIntent;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080016

    #v6=(Integer);
    invoke-direct {v1, v5, v6, v7}, Landroid/content/pm/LabeledIntent;-><init>(Ljava/lang/String;II)V

    .line 1797
    .local v1, li:Landroid/content/pm/LabeledIntent;
    #v1=(Reference);
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/LabeledIntent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Landroid/content/Intent;

    #v6=(Reference);
    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1800
    .end local v1           #li:Landroid/content/pm/LabeledIntent;
    :cond_0
    #v1=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1801
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 1350
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 1351
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher2/ItemInfo;->unbind()V

    goto :goto_0

    .line 1353
    .end local v1           #item:Lcom/android/launcher2/ItemInfo;
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 315
    #v3=(Reference);
    const/4 v1, 0x0

    .line 317
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    #v1=(Null);
    new-instance v2, Ljava/io/DataOutputStream;

    #v2=(UninitRef);
    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 318
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    #v2=(Reference);
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 319
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 320
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8

    .line 335
    if-eqz v2, :cond_2

    .line 337
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 343
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 338
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Integer);v4=(Null);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .line 340
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_0

    .line 322
    :catch_1
    #v1=(Null);v2=(Conflicted);v4=(Conflicted);
    move-exception v3

    .line 335
    :goto_1
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 337
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 338
    :catch_2
    move-exception v3

    goto :goto_0

    .line 324
    :catch_3
    #v1=(Null);
    move-exception v3

    move-object v0, v3

    .line 326
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    #v0=(Reference);v1=(Reference);
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 335
    if-eqz v1, :cond_0

    .line 337
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 338
    :catch_4
    move-exception v3

    goto :goto_0

    .line 327
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    #v0=(Uninit);v1=(Null);
    move-exception v3

    .line 335
    :goto_3
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 337
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 338
    :catch_6
    move-exception v3

    goto :goto_0

    .line 335
    :catchall_0
    #v0=(Conflicted);
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 337
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 340
    :cond_1
    :goto_5
    throw v3

    .line 338
    :catch_7
    move-exception v4

    #v4=(Reference);
    goto :goto_5

    .line 335
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Conflicted);v4=(Null);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_4

    .line 327
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_8
    #v1=(Null);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_3

    .line 324
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_9
    #v1=(Null);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    move-object v0, v3

    #v0=(Reference);
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_2

    .line 322
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_a
    #v0=(Uninit);v1=(Null);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    #v1=(Null);v3=(Integer);
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    #v1=(Reference);
    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x5

    #v6=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v7, "appWidgetId"

    .line 1044
    #v7=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1045
    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #v1=(Integer);
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->rectToCell(II)[I

    move-result-object v0

    .line 1048
    aget v1, v0, v3

    const/4 v2, 0x1

    #v2=(One);
    aget v0, v0, v2

    #v0=(Integer);
    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    .line 1088
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 1053
    :cond_0
    #v0=(Reference);v1=(Integer);v2=(One);v3=(Null);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1055
    :try_start_0
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #v1=(Reference);
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #v2=(Reference);
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1063
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    #v1=(Reference);
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1065
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    invoke-virtual {p0, v1, v6}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1056
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 1057
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    const v1, 0x7f0c003b

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    goto :goto_0

    .line 1070
    :cond_1
    #v0=(Integer);v1=(Reference);v2=(Reference);
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1071
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1073
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef);
    const-string v4, "android.intent.action.MAIN"

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1074
    #v3=(Reference);
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1079
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    :goto_1
    #v0=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-virtual {p0, v6, v0, v3}, Lcom/android/launcher2/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1082
    :cond_2
    #v0=(Integer);
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    #v0=(Reference);
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v0, "android.intent.extra.shortcut.NAME"

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addEmptyFolder()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1130
    #v9=(One);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1132
    invoke-direct {p0, v9}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v8

    .line 1133
    #v8=(Reference);
    if-nez v8, :cond_1

    .line 1150
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 1135
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    new-instance v1, Lcom/android/launcher2/UserFolderInfo;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1136
    #v1=(Reference);
    const v0, 0x7f0c0004

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1139
    const-wide/16 v2, -0x64

    #v2=(LongLo);v3=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    iget v6, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v6=(Integer);
    iget v7, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v7=(Integer);
    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1143
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    #v0=(Reference);
    iget-wide v2, v1, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 1148
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v2=(Integer);
    iget v3, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    #v6=(Boolean);
    move v4, v9

    #v4=(One);
    move v5, v9

    #v5=(One);
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method addGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 1092
    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    #v1=(Integer);
    iget v2, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v9

    .line 1093
    .local v9, cellinfo:Lcom/android/launcher2/CellLayout$CellInfo;
    #v9=(Reference);
    if-nez v9, :cond_1

    .line 1109
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    return-void

    .line 1096
    :cond_1
    #v0=(Uninit);v1=(Integer);v2=(Integer);v3=(One);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    invoke-static {p0, p1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/gadget/GadgetInfo;)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1097
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    #v10=(Reference);
    if-eqz v10, :cond_0

    .line 1100
    const-wide/16 v3, -0x64

    #v3=(LongLo);v4=(LongHi);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    iget v7, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v7=(Integer);
    iget v8, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v8=(Integer);
    move-object v1, p0

    move-object v2, p1

    #v2=(Reference);
    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1104
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v0, v10

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v2, v0

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v3=(Integer);
    iget v4, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v4=(Integer);
    iget v5, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    #v5=(Integer);
    iget v6, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    #v6=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v7

    #v7=(Boolean);
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1107
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method addItem(Lcom/android/launcher2/ItemInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "insert"

    .prologue
    const/4 v6, 0x1

    .line 2072
    #v6=(One);
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x65

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->pushItem(Lcom/android/launcher2/ItemInfo;)Z

    .line 2080
    .end local p1
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 2074
    .restart local p1
    :cond_1
    #v0=(Byte);v1=(LongHi);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);
    instance-of v0, p1, Lcom/android/launcher2/ShortcutInfo;

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 2075
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    goto :goto_0

    .line 2076
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v4=(Integer);
    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v5=(Integer);
    const/4 v8, 0x0

    #v8=(Null);
    move v7, v6

    #v7=(One);
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1119
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string v1, "android.intent.extra.shortcut.NAME"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->addEmptyFolder()V

    .line 1127
    :goto_0
    #v0=(PosByte);
    return-void

    .line 1125
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2044
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    .line 2045
    return-void
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const-string v4, "Launcher"

    .line 2083
    #v4=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    #v1=(Reference);
    if-eqz v1, :cond_4

    .line 2084
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    .line 2085
    #v2=(Reference);
    if-eqz v2, :cond_3

    instance-of v1, v2, Lcom/android/launcher2/UserFolderInfo;

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 2086
    move-object v0, v2

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2087
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 2088
    if-eqz v1, :cond_2

    .line 2089
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 2093
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/Folder;

    .line 2094
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    if-ne v4, v2, :cond_0

    .line 2095
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2099
    :cond_1
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 2107
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 2091
    :cond_2
    #v0=(Reference);v2=(Reference);v3=(Uninit);v4=(Reference);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);
    const-string v1, "Launcher"

    const-string v1, "Can\'t find folder icon by tag"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    :cond_3
    #v0=(Uninit);v1=(Conflicted);
    const-string v1, "Launcher"

    #v1=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Can\'t find user folder of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2104
    :cond_4
    #v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    #v3=(LongLo);v4=(LongHi);
    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    #v5=(Integer);
    iget v6, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    #v6=(Integer);
    move v8, v7

    #v8=(One);
    move v9, p2

    #v9=(Boolean);
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_1
.end method

.method public bindAppMessage(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ApplicationsMessage;->addApplication(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 2125
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 12
    .parameter

    .prologue
    const-string v11, "Launcher"

    .line 1943
    #v11=(Reference);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1945
    #v9=(LongLo);v10=(LongHi);
    const-string v0, "Launcher"

    #v0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "bindAppWidget: "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1949
    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1950
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1951
    if-nez v2, :cond_0

    .line 1953
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v2, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1958
    :cond_0
    #v1=(Integer);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v3, "Launcher"

    #v3=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "bindAppWidget: id="

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " belongs to component "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1963
    iget-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1964
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1966
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    #v2=(LongLo);v3=(LongHi);
    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    #v4=(Integer);
    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    #v5=(Integer);
    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    #v6=(Integer);
    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    #v7=(Integer);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1969
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1971
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "bound widget id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v3, 0x1

    .line 2037
    #v3=(One);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 2038
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 2039
    .local v0, i:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    goto :goto_0

    .line 2041
    .end local v0           #i:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2115
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 2116
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 2117
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/HotSeats;->removeItems(Ljava/util/ArrayList;)V

    .line 2118
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 2119
    .local v1, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    #v2=(Reference);
    iget-object v3, v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->removeApplication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2121
    .end local v1           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1933
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1934
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1935
    return-void
.end method

.method public bindGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 1985
    invoke-static {p0, p1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/gadget/GadgetInfo;)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1986
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    #v10=(Reference);
    if-nez v10, :cond_1

    .line 2003
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 1988
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    instance-of v1, v10, Landroid/view/View;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1989
    move-object v0, v10

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 1991
    .local v2, v:Landroid/view/View;
    #v2=(Reference);
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1993
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    iget-wide v3, p1, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v3=(LongLo);v4=(LongHi);
    iget v5, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellX:I

    #v5=(Integer);
    iget v6, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellY:I

    #v6=(Integer);
    iget v7, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    #v7=(Integer);
    iget v8, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    #v8=(Integer);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1995
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1997
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    iget-wide v3, p1, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    cmp-long v1, v3, v5

    #v1=(Byte);
    if-nez v1, :cond_0

    .line 2000
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v9, 0x0

    .line 1900
    #v9=(Null);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 1927
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    return-void

    .line 1902
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v10=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move v10, p2

    .line 1904
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Integer);
    if-ge v10, p3, :cond_2

    .line 1905
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    move-object v0, v2

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v6, v0

    .line 1906
    #v6=(Reference);
    iget-wide v2, v6, Lcom/android/launcher2/ItemInfo;->container:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, -0x64

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 1907
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    :cond_1
    #v2=(Conflicted);
    iget v2, v6, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 1904
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    add-int/lit8 v2, v10, 0x1

    #v2=(Integer);
    move v10, v2

    goto :goto_1

    .line 1913
    :pswitch_0
    #v3=(LongHi);v4=(LongLo);v5=(LongHi);v6=(Reference);
    invoke-virtual {p0, v6, v9}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    goto :goto_2

    .line 1916
    :pswitch_1
    const v3, 0x7f030016

    #v3=(Integer);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v8, v0

    #v8=(Reference);
    invoke-static {v3, p0, v2, v8}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v2

    .line 1920
    iget-wide v3, v6, Lcom/android/launcher2/ItemInfo;->screenId:J

    #v3=(LongLo);v4=(LongHi);
    iget v5, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v5=(Integer);
    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v6=(Integer);
    move v8, v7

    #v8=(One);
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_2

    .line 1926
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto :goto_0

    .line 1909
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public closeAnyFolderHotSeatOwned()Z
    .locals 6

    .prologue
    .line 1330
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/Folder;

    .line 1331
    .local v0, f:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    #v2=(Reference);
    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->container:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, -0x65

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 1332
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    goto :goto_0

    .line 1335
    .end local v0           #f:Lcom/android/launcher2/Folder;
    :cond_1
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    return v2
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 1311
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method closeFolder(Lcom/android/launcher2/Folder;Z)Z
    .locals 4
    .parameter "folder"
    .parameter "allowAnimation"

    .prologue
    .line 1315
    if-nez p1, :cond_0

    .line 1316
    const/4 v2, 0x0

    .line 1326
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 1318
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/view/ViewGroup;

    .line 1319
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1320
    instance-of v2, p1, Lcom/android/launcher2/DropTarget;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1322
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    #v3=(Reference);
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/DropTarget;

    move-object v2, v0

    #v2=(Reference);
    invoke-virtual {v3, v2}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1325
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p1, p2}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 1326
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 827
    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 835
    return-void

    .line 829
    :catch_0
    #v0=(One);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;
    .locals 2
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, ii:Lcom/android/launcher2/ItemIcon;
    #v0=(Null);
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 686
    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    .line 691
    :cond_0
    :goto_0
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {v0, p0}, Lcom/android/launcher2/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_1
    return-object v0

    .line 688
    .restart local p2
    :cond_2
    #v0=(Null);
    instance-of v1, p2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_0

    .line 689
    check-cast p2, Lcom/android/launcher2/UserFolderInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1273
    #v2=(One);
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 1274
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1291
    :cond_0
    :goto_0
    #v1=(Conflicted);
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    #v0=(Boolean);
    return v0

    :sswitch_0
    #v0=(Integer);v1=(Uninit);
    move v0, v2

    .line 1276
    #v0=(One);
    goto :goto_1

    .line 1278
    :sswitch_1
    #v0=(Integer);
    const-string v0, "debug.launcher2.dumpstate"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    move v0, v2

    .line 1280
    #v0=(One);
    goto :goto_1

    .line 1284
    :cond_1
    #v0=(Integer);v1=(Uninit);
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 1287
    #v0=(One);
    goto :goto_1

    .line 1274
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1285
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 2134
    #v2=(Reference);
    const-string v0, "Launcher"

    #v0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "BEGIN launcher2 dump state for launcher "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mSavedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mWaitingForResult="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mSavedInstanceState="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mDesktopItems.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mFolders.size="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 2142
    const-string v0, "Launcher"

    const-string v0, "END launcher2 dump state"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void
.end method

.method public finishBindingItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2011
    #v1=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2016
    :cond_0
    #v0=(Conflicted);
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 2019
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 2020
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2021
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 2024
    :cond_2
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 2026
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0}, Lcom/android/launcher2/HotSeats;->finishBinding()V

    .line 2029
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    #v0=(Reference);
    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1863
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method public getEditingState()I
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v0=(Integer);
    return v0
.end method

.method public getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 5
    .parameter "fi"

    .prologue
    const/4 v4, 0x0

    .line 2056
    #v4=(Null);
    if-nez p1, :cond_0

    move-object v0, v4

    .line 2064
    .end local p0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 2059
    .restart local p0
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-wide v0, p1, Lcom/android/launcher2/FolderInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x64

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 2060
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .line 2061
    .restart local p0
    :cond_1
    #v0=(Byte);
    iget-wide v0, p1, Lcom/android/launcher2/FolderInfo;->container:J

    #v0=(LongLo);
    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_2

    .line 2062
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->getItemIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_2
    #v0=(Byte);
    move-object v0, v4

    .line 2064
    #v0=(Null);
    goto :goto_0
.end method

.method getIconCache()Lcom/android/launcher2/IconCache;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    #v0=(Reference);
    return-object v0
.end method

.method public getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 1
    .parameter "si"

    .prologue
    .line 2068
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;
    .locals 4
    .parameter "si"

    .prologue
    .line 2048
    iget-wide v0, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x65

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v0=(LongLo);
    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_0

    .line 2050
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderInfo;

    move-object v0, p0

    .line 2052
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    .restart local p0
    :cond_0
    #v0=(Byte);v1=(LongHi);v2=(LongLo);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    return-object v0
.end method

.method public isInEditing()Z
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method isWorkspaceEditingPreviewShowing()Z
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x5

    #v6=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, -0x1

    .line 384
    #v3=(Byte);
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 386
    if-eq p2, v3, :cond_0

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    if-ne p2, v3, :cond_4

    .line 415
    sparse-switch p1, :sswitch_data_0

    .line 474
    :cond_1
    :goto_1
    #v0=(Conflicted);v3=(Integer);
    if-eq p1, v6, :cond_2

    const/16 v2, 0xa

    #v2=(PosByte);
    if-ne p1, v2, :cond_3

    if-nez p2, :cond_3

    .line 476
    :cond_2
    #v2=(Conflicted);
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 478
    :cond_3
    return-void

    .line 389
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Byte);
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 391
    .local v1, folder:Lcom/android/launcher2/UserFolder;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 392
    iget-object v2, v1, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    #v2=(Reference);
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 393
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->onHiddenButtonUnchecked()V

    goto :goto_0

    .line 398
    .end local v1           #folder:Lcom/android/launcher2/UserFolder;
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 399
    .restart local v1       #folder:Lcom/android/launcher2/UserFolder;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 400
    iget-object v2, v1, Lcom/android/launcher2/UserFolder;->mEnableHidden:Landroid/widget/CheckBox;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->onHiddenButtonChecked()V

    goto :goto_0

    .line 417
    .end local v1           #folder:Lcom/android/launcher2/UserFolder;
    :sswitch_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 419
    .restart local v1       #folder:Lcom/android/launcher2/UserFolder;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->onHiddenButtonChecked()V

    .line 421
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    #v2=(Reference);
    iget v3, v2, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    #v3=(Integer);
    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    .line 422
    iget-object v2, v1, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 423
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 424
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    goto :goto_1

    .line 429
    .end local v1           #folder:Lcom/android/launcher2/UserFolder;
    :sswitch_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Byte);
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 430
    .restart local v1       #folder:Lcom/android/launcher2/UserFolder;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->onHiddenButtonUnchecked()V

    .line 432
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    #v2=(Reference);
    iget v3, v2, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    #v3=(Integer);
    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lcom/android/launcher2/FolderInfo;->itemFlags:I

    .line 433
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 434
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    goto :goto_1

    .line 439
    .end local v1           #folder:Lcom/android/launcher2/UserFolder;
    :sswitch_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Byte);
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->getOpenFolderByIntent(Landroid/content/Intent;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 440
    .restart local v1       #folder:Lcom/android/launcher2/UserFolder;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 441
    iget-object v2, v1, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 442
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    goto :goto_1

    .line 447
    .end local v1           #folder:Lcom/android/launcher2/UserFolder;
    :sswitch_3
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_1

    .line 450
    :sswitch_4
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 453
    :sswitch_5
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 456
    :sswitch_6
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddLiveFolder(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 459
    :sswitch_7
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 465
    :cond_4
    if-ne p1, v6, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 468
    const-string v2, "appWidgetId"

    #v2=(Reference);
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    .local v0, appWidgetId:I
    #v0=(Integer);
    if-eq v0, v3, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_1

    .line 387
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1296
    #v2=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 1308
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 1301
    :cond_1
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1305
    const/4 v0, 0x2

    #v0=(PosByte);
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v1=(Integer);
    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    #v0=(Boolean);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_0

    :cond_2
    #v0=(PosByte);
    move v0, v2

    #v0=(Null);
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v9, 0x1

    .line 1361
    #v9=(One);
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1376
    .local v3, tag:Ljava/lang/Object;
    #v3=(Reference);
    instance-of v4, v3, Lcom/android/launcher2/ShortcutInfo;

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 1377
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1388
    .end local v3           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Integer);
    return-void

    .line 1363
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(PosByte);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(One);
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    goto :goto_0

    .line 1366
    :pswitch_1
    iget v4, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v9, v4, :cond_1

    .line 1367
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1370
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1379
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_2
    #v3=(Reference);v4=(Boolean);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    move-object v0, v3

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1380
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    new-array v2, v5, [I

    .line 1381
    .local v2, pos:[I
    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1382
    new-instance v4, Landroid/graphics/Rect;

    #v4=(UninitRef);
    aget v5, v2, v7

    #v5=(Integer);
    aget v6, v2, v9

    #v6=(Integer);
    aget v7, v2, v7

    #v7=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    #v8=(Integer);
    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    #v9=(Integer);
    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #v4=(Reference);
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1384
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1385
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Boolean);v5=(PosByte);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(One);
    instance-of v4, v3, Lcom/android/launcher2/FolderInfo;

    if-eqz v4, :cond_0

    .line 1386
    check-cast v3, Lcom/android/launcher2/FolderInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1361
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x7f08003d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x100

    .line 205
    #v5=(PosShort);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const-string v3, "Launcher"

    #v3=(Reference);
    const-string v4, "onCreate"

    #v4=(Reference);
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x10001

    #v4=(Integer);
    const/high16 v5, 0x1

    #v5=(Integer);
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 214
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 217
    new-instance v3, Lcom/android/launcher2/DragController;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/launcher2/DragController;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 219
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 221
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 222
    new-instance v3, Lcom/android/launcher2/LauncherAppWidgetHost;

    #v3=(UninitRef);
    const/16 v4, 0x400

    #v4=(PosShort);
    invoke-direct {v3, p0, p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;I)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 223
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 225
    new-instance v3, Lcom/android/launcher2/ApplicationsMessage;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/launcher2/ApplicationsMessage;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    .line 231
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 232
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setWallpaperDimension()V

    .line 234
    const v3, 0x7f030011

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 235
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 241
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v3, p0, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 244
    new-instance v3, Landroid/text/SpannableStringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 245
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 247
    new-instance v1, Landroid/content/IntentFilter;

    #v1=(UninitRef);
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, filter:Landroid/content/IntentFilter;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    new-instance v2, Landroid/content/IntentFilter;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v2, screenIntentFilter:Landroid/content/IntentFilter;
    #v2=(Reference);
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef);
    const-string v5, "android.intent.action.WALLPAPER_CHANGED"

    #v5=(Reference);
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 257
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1673
    packed-switch p1, :pswitch_data_0

    .line 1678
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 1675
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1673
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    #v1=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 923
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v3

    .line 953
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0

    .line 927
    :cond_0
    #v1=(PosByte);v2=(Uninit);
    const v0, 0x7f0c0030

    #v0=(Integer);
    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 929
    const/4 v0, 0x3

    #v0=(PosByte);
    const v1, 0x7f0c0021

    #v1=(Integer);
    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 932
    const/4 v0, 0x4

    #v0=(PosByte);
    const v1, 0x7f0c0022

    #v1=(Integer);
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 935
    const/4 v0, 0x5

    #v0=(PosByte);
    const v1, 0x7f0c0023

    #v1=(Integer);
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x10801c7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4e

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 939
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.settings.SETTINGS"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    #v0=(Reference);
    const/high16 v1, 0x1020

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 943
    const/4 v1, 0x6

    #v1=(PosByte);
    const v2, 0x7f0c0025

    #v2=(Integer);
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    #v2=(PosByte);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 947
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/launcher2/LauncherPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 949
    #v0=(Reference);
    const v1, 0x7f0c0032

    #v1=(Integer);
    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x10801c3

    #v2=(Integer);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4c

    #v2=(PosByte);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v4

    .line 953
    #v0=(One);
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 877
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    #v1=(Integer);
    if-ltz v1, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 885
    add-int/lit8 v0, v1, -0x1

    #v0=(Integer);
    move v1, v0

    goto :goto_1

    .line 881
    :catch_0
    #v0=(Conflicted);v1=(Uninit);v2=(Uninit);
    move-exception v0

    .line 882
    #v0=(Reference);
    const-string v1, "Launcher"

    #v1=(Reference);
    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 889
    :cond_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 891
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 893
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindDesktopItems()V

    .line 895
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 897
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 899
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 901
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 902
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->destory()V

    .line 903
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 571
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 572
    .local v1, handled:Z
    #v1=(Boolean);
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/16 v2, 0x42

    #v2=(PosByte);
    if-eq p1, v2, :cond_0

    .line 573
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #v4=(Reference);
    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 575
    .local v0, gotKey:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    .line 591
    .end local v0           #gotKey:Z
    :goto_0
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 587
    :cond_0
    #v2=(Conflicted);
    const/16 v2, 0x52

    #v2=(PosByte);
    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    :cond_1
    #v2=(PosByte);
    move v2, v1

    .line 591
    #v2=(Boolean);
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 1484
    #v2=(One);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move v1, v3

    .line 1516
    :goto_0
    #v0=(Conflicted);
    return v1

    .line 1488
    :cond_0
    #v0=(Uninit);
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_1

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1492
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1495
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v2

    .line 1496
    #v1=(One);
    goto :goto_0

    .line 1499
    :cond_2
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 1500
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    #v1=(Reference);
    if-nez v1, :cond_5

    .line 1502
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 1505
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    :cond_3
    :goto_2
    #v1=(Conflicted);
    move v1, v2

    .line 1516
    #v1=(One);
    goto :goto_0

    :cond_4
    #v1=(Boolean);
    move v1, v2

    .line 1502
    #v1=(One);
    goto :goto_1

    .line 1508
    :cond_5
    #v1=(Reference);
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/Folder;

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 1510
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1512
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x40

    #v6=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    .line 839
    #v4=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 842
    const-string v0, "android.intent.action.MAIN"

    #v0=(Reference);
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 857
    :cond_1
    #v0=(Byte);v1=(LongHi);v2=(LongLo);v3=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    #v0=(Integer);
    and-int/2addr v0, v6

    if-eq v0, v6, :cond_3

    move v0, v4

    .line 863
    :goto_1
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 865
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_0

    :cond_3
    #v0=(Integer);
    move v0, v5

    .line 861
    #v0=(Null);
    goto :goto_1

    .line 868
    :cond_4
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 993
    #v1=(One);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 1016
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    #v0=(Boolean);
    return v0

    .line 995
    :pswitch_0
    #v0=(Integer);
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v1, :cond_1

    .line 996
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    :cond_0
    :goto_1
    move v0, v1

    .line 1004
    #v0=(One);
    goto :goto_0

    .line 997
    :cond_1
    #v0=(Integer);
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 999
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->sortDesktopItems()V

    goto :goto_1

    .line 1001
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_1

    .line 1006
    :pswitch_1
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    move v0, v1

    .line 1007
    #v0=(One);
    goto :goto_0

    .line 1009
    :pswitch_2
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 1010
    #v0=(One);
    goto :goto_0

    .line 1012
    :pswitch_3
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->showNotifications()V

    move v0, v1

    .line 1013
    #v0=(One);
    goto :goto_0

    .line 993
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    #v1=(Null);
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 499
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    check-cast v0, Landroid/view/ViewRoot;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewRoot;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 501
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->onResumeOrPauseGadget(Z)V

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 503
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1683
    .line 1687
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    .line 958
    #v3=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 959
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v0=(Integer);
    if-ne v0, v3, :cond_1

    move v0, v3

    .line 960
    :goto_0
    #v0=(Boolean);
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v1=(Integer);
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    move v1, v3

    .line 962
    :goto_1
    iget v2, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v2=(Integer);
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    move v2, v3

    .line 965
    :goto_2
    if-eqz v0, :cond_5

    .line 966
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x1080033

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 971
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 972
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    #v0=(Boolean);
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 986
    :cond_0
    :goto_4
    #v0=(Conflicted);
    if-nez v2, :cond_7

    move v0, v3

    :goto_5
    #v0=(Boolean);
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 988
    return v3

    :cond_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    move v0, v5

    .line 959
    #v0=(Null);
    goto :goto_0

    :cond_2
    #v0=(Boolean);v1=(Integer);
    move v1, v5

    .line 960
    #v1=(Null);
    goto :goto_1

    :cond_3
    #v1=(Boolean);v2=(Integer);
    move v2, v5

    .line 962
    #v2=(Null);
    goto :goto_2

    :cond_4
    #v0=(Reference);v1=(PosByte);v2=(Boolean);
    move v0, v5

    .line 972
    #v0=(Null);
    goto :goto_3

    .line 973
    :cond_5
    #v0=(Boolean);v1=(Boolean);
    if-eqz v1, :cond_6

    .line 974
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x108003e

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 978
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 979
    :cond_6
    #v0=(Boolean);v1=(Boolean);
    if-eqz v2, :cond_0

    .line 980
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x108009c

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x53

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 984
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    :cond_7
    #v0=(Conflicted);
    move v0, v5

    .line 986
    #v0=(Null);
    goto :goto_5
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    #v1=(Null);
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 483
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 486
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 487
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsScreenOff:Z

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->onResumeOrPauseGadget(Z)V

    .line 490
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 491
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->updateWallpaper()V

    .line 492
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 539
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onScreenInvalide(Landroid/view/View;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->refreshing:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1661
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->refreshing:Z

    .line 1662
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/WorkspaceEditingPreview;->refreshThumbnails(Landroid/view/View;)V

    .line 1663
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->refreshing:Z

    .line 1665
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 1030
    #v1=(One);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1031
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 532
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStart()V

    .line 533
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 524
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 525
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->snapWallpaperForOthers()V

    .line 526
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 527
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1112
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1113
    return-void
.end method

.method public reloadWidgetPreview()V
    .locals 2

    .prologue
    .line 809
    const-wide/16 v0, 0x1f4

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 813
    return-void

    .line 810
    :catch_0
    #v0=(LongLo);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 784
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 785
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1153
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    return-void
.end method

.method public removeGadget(Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 792
    iget v4, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v4=(Integer);
    const/4 v5, 0x5

    #v5=(PosByte);
    if-ne v4, v5, :cond_2

    .line 793
    const/4 v2, 0x0

    .line 794
    .local v2, gadget:Lcom/android/launcher2/gadget/Gadget;
    #v2=(Null);
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 795
    .local v1, g:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v4, v0

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 796
    move-object v2, v1

    .line 800
    .end local v1           #g:Lcom/android/launcher2/gadget/Gadget;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);
    if-eqz v2, :cond_2

    .line 801
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 802
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 805
    .end local v2           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method public setEditingState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 1538
    #v2=(Null);
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v0=(Integer);
    if-ne p1, v0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 1540
    :cond_1
    #v1=(Uninit);
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1545
    :cond_2
    #v0=(Integer);
    packed-switch p1, :pswitch_data_0

    .line 1576
    :goto_1
    #v1=(Conflicted);
    iput p1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    goto :goto_0

    .line 1547
    :pswitch_0
    #v1=(Uninit);
    const/4 v0, 0x2

    #v0=(PosByte);
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    #v1=(Integer);
    if-ne v0, v1, :cond_3

    .line 1548
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->showWidgetBox(Z)V

    .line 1550
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v1, :cond_4

    move v0, v3

    :goto_2
    #v0=(Boolean);
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    goto :goto_1

    :cond_4
    #v0=(PosByte);
    move v0, v2

    #v0=(Null);
    goto :goto_2

    .line 1555
    :pswitch_1
    #v0=(Integer);v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 1556
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->showWidgetBox(Z)V

    goto :goto_1

    .line 1559
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    goto :goto_1

    .line 1565
    :pswitch_2
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_6

    .line 1566
    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    .line 1568
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->showWidgetBox(Z)V

    goto :goto_1

    .line 1572
    :pswitch_3
    #v0=(Integer);
    invoke-direct {p0, v3, v3}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    goto :goto_1

    .line 1545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    .line 817
    return-void
.end method

.method public showPreview(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 1520
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1527
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1521
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1523
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFadeIn:Landroid/view/animation/Animation;

    :goto_2
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1524
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    :goto_3
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mShrinkToBottomSlow:Landroid/view/animation/Animation;

    :goto_4
    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1526
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->showPreview(Z)V

    goto :goto_0

    .line 1522
    :cond_1
    #v1=(Null);
    const/4 v1, 0x4

    #v1=(PosByte);
    goto :goto_1

    .line 1523
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFadeOut:Landroid/view/animation/Animation;

    #v1=(Reference);
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1524
    #v1=(Null);
    goto :goto_3

    .line 1525
    :cond_4
    #v1=(PosByte);
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStretchFromBottomSlow:Landroid/view/animation/Animation;

    #v1=(Reference);
    goto :goto_4
.end method

.method showWarning(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    .line 821
    return-void
.end method

.method startActivity(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1391
    const/high16 v1, 0x1000

    #v1=(Integer);
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1393
    :try_start_0
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1394
    move-object v0, p2

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutInfo;->onLaunch()V

    .line 1395
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    invoke-static {p0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1396
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/ApplicationsMessage;->onLaunchApplication(Landroid/content/ComponentName;)V

    .line 1398
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1399
    :catch_0
    #v3=(Uninit);v4=(Uninit);
    move-exception v1

    .line 1400
    #v1=(Reference);
    const v2, 0x7f0c002e

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1401
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Launcher cannot start this activity(app2sd?)tag="

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0008

    #v2=(Integer);
    const/4 v1, 0x0

    .line 1408
    #v1=(Null);
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1409
    :cond_0
    #v0=(Conflicted);
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1418
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1410
    :catch_0
    #v1=(Null);v2=(Integer);v3=(Uninit);
    move-exception v0

    .line 1411
    #v0=(Reference);
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1412
    :catch_1
    #v0=(Conflicted);
    move-exception v0

    .line 1413
    #v0=(Reference);
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1414
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Launcher does not have the permission to launch "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 1873
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1874
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    .line 1875
    .local v0, count:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v3=(Conflicted);
    if-ge v1, v0, :cond_0

    .line 1877
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1891
    :cond_0
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/launcher2/HotSeats;->startBinding()V

    .line 1892
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 912
    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 915
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    const-string v0, "search"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 917
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    #v3=(Reference);
    move v2, p2

    #v2=(Boolean);
    move-object v4, p3

    #v4=(Reference);
    move v5, p4

    #v5=(Boolean);
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 919
    return-void

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-object v1, p1

    #v1=(Reference);
    goto :goto_0
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset(FFFF)V

    .line 1854
    return-void
.end method

*/}
