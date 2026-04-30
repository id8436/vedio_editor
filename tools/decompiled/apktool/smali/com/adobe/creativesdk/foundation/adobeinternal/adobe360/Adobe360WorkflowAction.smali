.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;
.super Ljava/lang/Object;
.source "Adobe360WorkflowAction.java"


# static fields
.field private static final kWorkflowActionDefaultLocale:Ljava/lang/String; = "en_US"

.field private static final kWorkflowActionId:Ljava/lang/String; = "id"

.field private static final kWorkflowActionKeyAppPackageName:Ljava/lang/String; = "app-store-id"

.field private static final kWorkflowActionKeyComponentName:Ljava/lang/String; = "component-name"

.field private static final kWorkflowActionKeyDescription:Ljava/lang/String; = "description"

.field private static final kWorkflowActionKeyHeight:Ljava/lang/String; = "height"

.field private static final kWorkflowActionKeyHref:Ljava/lang/String; = "href"

.field private static final kWorkflowActionKeyIcon:Ljava/lang/String; = "icon"

.field private static final kWorkflowActionKeyInputs:Ljava/lang/String; = "inputs"

.field private static final kWorkflowActionKeyLinks:Ljava/lang/String; = "_links"

.field private static final kWorkflowActionKeyName:Ljava/lang/String; = "name"

.field private static final kWorkflowActionKeyOutputs:Ljava/lang/String; = "outputs"

.field private static final kWorkflowActionKeySubType:Ljava/lang/String; = "subtype"

.field private static final kWorkflowActionKeyType:Ljava/lang/String; = "type"

.field private static final kWorkflowActionKeyTypes:Ljava/lang/String; = "types"

.field private static final kWorkflowActionKeyWidth:Ljava/lang/String; = "width"

.field private static final kWorkflowActionKeyXPlatform:Ljava/lang/String; = "x-platform"


# instance fields
.field private _actionDescription:Ljava/lang/String;

.field private _actionIcon:Landroid/graphics/drawable/Drawable;

.field private _actionId:Ljava/lang/String;

.field private _actionName:Ljava/lang/String;

.field private _applicationPackageName:Ljava/lang/String;

.field private _componentName:Ljava/lang/String;

.field private _iconHeight:I

.field private _iconHref:Ljava/lang/String;

.field private _iconType:Ljava/lang/String;

.field private _iconWidth:I

.field private _localizedDescription:Lorg/json/JSONObject;

.field private _localizedString:Lorg/json/JSONObject;

.field private _privateInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;",
            ">;"
        }
    .end annotation
.end field

.field private _privateOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private _readFromPackageManager:Z

.field private _subType:Ljava/lang/String;

.field private _type:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_applicationPackageName:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_componentName:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_type:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 105
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_subType:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static createActionFromActionRegistryData(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 118
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-object v4

    .line 121
    :cond_0
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;-><init>()V

    .line 124
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionId:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_localizedString:Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_localizedDescription:Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->getActionType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_type:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 130
    const-string/jumbo v0, "subtype"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_subType:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "x-platform"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    const-string/jumbo v2, "app-store-id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_applicationPackageName:Ljava/lang/String;

    .line 133
    const-string/jumbo v2, "component-name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_componentName:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "_links"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "href"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconHref:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "_links"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconType:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "_links"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconWidth:I

    .line 139
    const-string/jumbo v0, "_links"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconHeight:I

    .line 142
    const-string/jumbo v0, "inputs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v0, v1

    .line 144
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 145
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    const-string/jumbo v3, "types"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_6

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 152
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 153
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 158
    :goto_3
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    invoke-direct {v3, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    iget-object v2, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_2
    const-string/jumbo v0, "outputs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_4

    move v0, v1

    .line 164
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 165
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string/jumbo v3, "types"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 169
    if-eqz v8, :cond_5

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 171
    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 172
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    move-object v2, v3

    .line 177
    :goto_6
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-direct {v3, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    iget-object v2, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 182
    :cond_4
    iput-boolean v1, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    move-object v4, v5

    .line 183
    goto/16 :goto_0

    :cond_5
    move-object v2, v4

    goto :goto_6

    :cond_6
    move-object v2, v4

    goto :goto_3
.end method

.method public static createActionFromPackageManagerData(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;
    .locals 8

    .prologue
    .line 206
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;-><init>()V

    .line 208
    iput-object p0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_applicationPackageName:Ljava/lang/String;

    .line 209
    iput-object p1, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_componentName:Ljava/lang/String;

    .line 210
    iput-object p2, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_type:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 212
    const-string/jumbo v0, "id"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionId:Ljava/lang/String;

    .line 213
    const-string/jumbo v0, "subtype"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_subType:Ljava/lang/String;

    .line 215
    iput-object p3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionName:Ljava/lang/String;

    .line 216
    iput-object p4, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionDescription:Ljava/lang/String;

    .line 217
    iput-object p5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    const-string/jumbo v0, "inputs"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 222
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 223
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 224
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    const-string/jumbo v2, "types"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 226
    const/4 v1, 0x0

    .line 227
    if-eqz v6, :cond_1

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 230
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v1, v2

    .line 235
    :cond_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    invoke-direct {v2, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 236
    iget-object v1, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const-string/jumbo v0, "outputs"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 240
    if-eqz v4, :cond_5

    .line 241
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 242
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    const-string/jumbo v2, "types"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 245
    const/4 v1, 0x0

    .line 246
    if-eqz v6, :cond_4

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 249
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 254
    :cond_4
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-direct {v2, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 255
    iget-object v1, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    .line 261
    return-object v3
.end method


# virtual methods
.method addInput(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method addOutput(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_applicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_localizedDescription:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 368
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconHref:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 371
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_localizedString:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_actionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOutputs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_type:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    return-object v0
.end method

.method public readFromPackageManager()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    return v0
.end method

.method removeInput(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method removeOutput(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_privateOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public retriveAppIcon(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_readFromPackageManager:Z

    if-nez v0, :cond_1

    .line 292
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->_iconHref:Ljava/lang/String;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$1;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$2;

    invoke-direct {v3, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->downloadAppIconFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
