.class public Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;
.super Ljava/lang/Object;
.source "Adobe360WorkflowPMHelper.java"


# static fields
.field private static _sharedInsatnce:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper; = null

.field public static final kAdobeActionCapture:Ljava/lang/String; = "com.adobe.360action.CAPTURE"

.field public static final kAdobeActionCaptureN:Ljava/lang/String; = "com.adobe.360action.CAPTUREN"

.field public static final kAdobeActionEdit:Ljava/lang/String; = "com.adobe.360action.EDIT"

.field public static final kAdobeActionEmbed:Ljava/lang/String; = "com.adobe.360action.EMBED"

.field public static final kAdobeActionEmbedN:Ljava/lang/String; = "com.adobe.360action.EMBEDN"

.field private static final kAdobeMetadataKey:Ljava/lang/String; = "com.adobe.360action.metadata"

.field private static final kAdobeTypeKey:Ljava/lang/String; = "action-type"


# instance fields
.field private _actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.adobe.360action.EDIT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.adobe.360action.CAPTURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.adobe.360action.EMBED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.adobe.360action.EMBEDN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.adobe.360action.CAPTUREN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method private get360WorkflowActionType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "com.adobe.360action.EDIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEdit:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string/jumbo v0, "com.adobe.360action.CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCapture:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v0, "com.adobe.360action.EMBED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v0, "com.adobe.360action.EMBEDN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo v0, "com.adobe.360action.CAPTUREN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCaptureN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMatcingActionDict(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->get360WorkflowActionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    const-string/jumbo v3, "action-type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 103
    :goto_1
    return-object v0

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSharedInsatnce()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public fetchActionsFromInstalledApps()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 112
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->_actionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v2, 0x81

    :try_start_0
    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 130
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 133
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 135
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.adobe.360action.metadata"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->getMatcingActionDict(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v6

    .line 142
    invoke-direct {p0, v7}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowPMHelper;->get360WorkflowActionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    if-nez v0, :cond_2

    .line 147
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 149
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v1, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 154
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->getActionType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v2

    .line 154
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->createActionFromPackageManagerData(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    move-result-object v0

    .line 158
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360WorkflowPMHelper"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360WorkflowPMHelper"

    invoke-static {v1, v2, v12, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 198
    :cond_3
    return-object v9
.end method
