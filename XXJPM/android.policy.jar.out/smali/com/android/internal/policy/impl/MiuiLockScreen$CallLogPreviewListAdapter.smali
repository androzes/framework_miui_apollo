.class Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;
.super Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogPreviewListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    }
.end annotation


# static fields
.field static final CALLER_NAME_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x2

.field static final DURATION_COLUMN_INDEX:I = 0x3

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final NUMBER_COLUMN_INDEX:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    .line 920
    const v0, 0x1090098

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 921
    return-void
.end method

.method private formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "elapsedSeconds"

    .prologue
    .line 965
    const-wide/16 v2, 0x5

    div-long v2, p2, v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 966
    .local v0, ringCount:J
    const v2, 0x1040403

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;

    .line 940
    .local v8, views:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 941
    .local v7, number:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, callerName:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getContact(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-result-object v5

    .line 943
    .local v5, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    if-eqz v5, :cond_0

    iget-object v9, v5, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 944
    iget-object v0, v5, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    .line 947
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 948
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    :goto_0
    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 959
    .local v1, date:J
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 961
    .local v3, duration:J
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->durationView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    return-void

    .line 951
    .end local v1           #date:J
    .end local v3           #duration:J
    :cond_1
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 955
    .local v6, location:Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, ""

    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-object v10, v6

    goto :goto_1
.end method

.method public markRead(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    .line 925
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 926
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 928
    .local v1, id:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 929
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "new"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 935
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 971
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 974
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;)V

    .line 975
    .local v1, views:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    const v2, 0x10202c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    .line 976
    const v2, 0x1020055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    .line 977
    const v2, 0x102005a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    .line 978
    const v2, 0x10202c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->durationView:Landroid/widget/TextView;

    .line 979
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 981
    return-object v0
.end method

.method protected onQueryResultCount(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 986
    if-lez p1, :cond_1

    .line 987
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SlidingPanel;->getSliderTextVisibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 991
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "com.android.phone"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 993
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
