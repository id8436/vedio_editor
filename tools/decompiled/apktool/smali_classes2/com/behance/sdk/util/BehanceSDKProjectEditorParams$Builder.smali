.class public Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorParams.java"


# instance fields
.field private final params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-direct {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    .line 156
    return-void
.end method


# virtual methods
.method public addCreativeField(Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$1100(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$1102(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/util/List;)Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$1100(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object p0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$1100(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Only 3 fields allowed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addImageModuleLocal(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 3

    .prologue
    .line 191
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;-><init>()V

    .line 192
    invoke-virtual {v1, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setPath(Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->getStoredImageDetails(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 194
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setHeight(I)V

    .line 195
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setWidth(I)V

    .line 196
    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getWidth()I

    move-result v0

    const/16 v2, 0x578

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setFullBleed(Z)V

    .line 197
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->addProjectModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 198
    return-object p0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProjectTool(Lcom/behance/sdk/dto/BehanceSDKTagDTO;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$200(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$202(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/util/List;)Ljava/util/List;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$200(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public addVideoModuleLocal(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 202
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;-><init>()V

    .line 203
    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setPath(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setWidth(I)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setHeight(I)V

    .line 206
    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->addProjectModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 207
    return-object p0
.end method

.method public build()Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    return-object v0
.end method

.method public setAdobeUserId(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$502(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setAdultContent(Z)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$902(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Z)Z

    .line 231
    return-object p0
.end method

.method public setBehanceUserId(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$402(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setCopyrighOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$1002(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 236
    return-object p0
.end method

.method public setNotificationHandlerActivityClass(Ljava/lang/Class;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$002(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/Class;)Ljava/lang/Class;

    .line 160
    return-object p0
.end method

.method public setProjectDescription(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$702(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$302(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setProjectTags(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$802(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setProjectTitle(Ljava/lang/String;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$602(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams$Builder;->params:Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->access$102(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    .line 165
    return-object p0
.end method
