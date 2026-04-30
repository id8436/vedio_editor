.class public Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;
.super Ljava/lang/Object;
.source "SharingIntentsOptions.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private intentAdapter:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;

.field private intentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

.field private shareIntentsView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f12055c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->shareIntentsView:Landroid/widget/GridView;

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f12055b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;-><init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentAdapter:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->shareIntentsView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentAdapter:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->shareIntentsView:Landroid/widget/GridView;

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;-><init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDefaultSmsPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onBackPressed()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f12055b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareIntentsClosed()V

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onShareActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 122
    add-int/lit16 v0, p1, -0x2710

    .line 123
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 125
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string/jumbo v0, "CameraRoll"

    .line 127
    const-string/jumbo v2, "android.email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    const-string/jumbo v0, "Email"

    .line 138
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 140
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didUploadVideoToExportDestination(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoSuccessViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 129
    :cond_2
    const-string/jumbo v2, "twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    const-string/jumbo v0, "Twitter"

    goto :goto_0

    .line 131
    :cond_3
    const-string/jumbo v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    const-string/jumbo v0, "Facebook"

    goto :goto_0

    .line 133
    :cond_4
    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    const-string/jumbo v0, "Message"

    goto :goto_0

    .line 135
    :cond_5
    const-string/jumbo v2, "android.gm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v0, "Email"

    goto :goto_0

    .line 144
    :cond_6
    if-nez p2, :cond_1

    .line 146
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelVideoUploadToExportDestination(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onShareClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

    if-eqz v1, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

    invoke-interface {v1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;->onOpened()V

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 159
    const/4 v2, 0x0

    .line 162
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v8

    .line 165
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 166
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    const v3, 0x7f0a049d

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v1, "message/rfc822"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->getDefaultSmsPackage()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v2, v18

    .line 186
    :goto_0
    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 193
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v10, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 197
    const/4 v1, 0x0

    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_10

    .line 200
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 201
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v1, v10}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    .line 205
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v10, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    .line 207
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    .line 209
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 210
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 211
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 212
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 213
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 214
    const/4 v5, 0x0

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 216
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const/4 v1, 0x1

    .line 221
    :goto_3
    if-eqz v1, :cond_4

    move-object v1, v3

    .line 207
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto :goto_2

    .line 180
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v3, "address"

    const-string/jumbo v4, "phoneNumber"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v3, "sms_body"

    move-object/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 224
    :cond_4
    const-string/jumbo v1, "android.email"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v10, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 227
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v10}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_4

    .line 229
    :cond_5
    const-string/jumbo v1, "twitter"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "facebook"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "sms"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "android.gm"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 232
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v5, "twitter"

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 236
    const-string/jumbo v5, "android.intent.extra.TEXT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0a04a3

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-static {v14, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static {v12, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v1, v3

    goto/16 :goto_4

    .line 237
    :cond_9
    const-string/jumbo v5, "facebook"

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 241
    const-string/jumbo v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 242
    :cond_a
    const-string/jumbo v5, "sms"

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 243
    const-string/jumbo v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 244
    :cond_b
    const-string/jumbo v5, "android.gm"

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    const-string/jumbo v5, "android.intent.extra.TEXT"

    const v12, 0x7f0a049a

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    const/16 v16, 0x2

    aput-object p2, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v6, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v5, "android.intent.extra.SUBJECT"

    const v12, 0x7f0a049d

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-virtual {v6, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v5, "message/rfc822"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 253
    :cond_c
    if-eqz v2, :cond_d

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_d
    if-eqz v3, :cond_e

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->intentAdapter:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->notifyDataSetChanged()V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    const v2, 0x7f12055b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void

    :cond_f
    move v1, v5

    goto/16 :goto_3

    :cond_10
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public onShareIntentsClosed()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f12055b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;->onClosed()V

    .line 270
    :cond_0
    return-void
.end method
