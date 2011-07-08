.class Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;
.super Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsPreviewListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    .line 1009
    const v0, 0x1090099

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1010
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;

    .line 1040
    .local v13, views:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, address:Ljava/lang/String;
    const/4 v14, 0x2

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1042
    .local v5, date:J
    const/4 v14, 0x3

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1043
    .local v11, type:I
    const/4 v14, 0x4

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1046
    .local v10, text:Ljava/lang/String;
    const/4 v14, 0x7

    if-le v11, v14, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1048
    const/4 v14, 0x5

    :try_start_0
    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1049
    .local v4, charset:Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 1050
    new-instance v12, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "iso-8859-1"

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v12, v14, v15}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1053
    .local v12, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1059
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v12           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getContact(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-result-object v7

    .line 1060
    .local v7, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    if-eqz v7, :cond_1

    iget-object v14, v7, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1061
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pref_key_enable_notifications_body"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v9, 0x1

    .line 1073
    .local v9, showBodySetting:I
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->textView:Landroid/widget/TextView;

    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    move-object v15, v10

    :goto_2
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    return-void

    .line 1063
    .end local v9           #showBodySetting:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14, v3}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1064
    .local v8, location:Ljava/lang/String;
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_3
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 1073
    .end local v8           #location:Ljava/lang/String;
    .restart local v9       #showBodySetting:I
    :cond_3
    const-string v15, ""

    goto :goto_2

    .line 1055
    .end local v7           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .end local v9           #showBodySetting:I
    :catch_0
    move-exception v14

    goto/16 :goto_0
.end method

.method public markRead(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v6, "seen"

    const-string v10, "_id=?"

    .line 1014
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1015
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1016
    .local v1, id:J
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1018
    .local v3, type:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1019
    .local v4, values:Landroid/content/ContentValues;
    const/4 v5, 0x7

    if-ge v3, v5, :cond_0

    .line 1020
    const-string v5, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v4, v10, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1035
    :goto_0
    return-void

    .line 1028
    :cond_0
    const-string v5, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v4, v10, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1079
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;)V

    .line 1083
    .local v1, views:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    const v2, 0x10202c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    .line 1084
    const v2, 0x1020040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->textView:Landroid/widget/TextView;

    .line 1085
    const v2, 0x102005a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    .line 1086
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1088
    return-object v0
.end method

.method protected onQueryResultCount(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1093
    if-lez p1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SlidingPanel;->getSliderTextVisibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/widget/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1098
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "com.jb.gosms"

    const/4 v3, 0x0

    const/16 v4, 0x7b

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1101
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
