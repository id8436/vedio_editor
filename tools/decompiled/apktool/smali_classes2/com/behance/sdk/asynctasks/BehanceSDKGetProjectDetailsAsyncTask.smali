.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetProjectDetailsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    return-object v0
.end method

.method static synthetic access$200()Lcom/behance/sdk/logger/ILogger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-object v0
.end method

.method private createAppreciateDivInHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v0, ""

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<div id=\"appreciation\" style=\"height: 180px; width: 100%; text-align:center; padding-bottom:52px; padding-top:38px; clear:both;\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method private fixAndSaveHTML(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixHTMLContent(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->saveProjectHTML(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 174
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "Unable to fix the HTML content"

    invoke-direct {v1, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private fixAudioModuleLayout(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(?s)(<li )(.*)(module-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")([^>])(>)(.*?)(<object )(.*?)(</object>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "$1$2$3$4$5<div class=\"audioModuleWrapperClass\" align=\"center\"><audio class=\"audioModuleWrapperClass\" style=\"width:80%;\" controls=\"controls\"><source src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->getSrcURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" type=\"audio/mpeg\">Problem loading audio</audio></div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method private fixEmbedModuleLayout(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    const-string/jumbo v0, ""

    .line 200
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getEmbedHTML()Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "src=\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 202
    if-ltz v2, :cond_0

    .line 203
    add-int/lit8 v2, v2, 0x5

    .line 204
    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 205
    if-lez v3, :cond_0

    .line 206
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 216
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(?s)(<li )(.*)(module-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")([^>])(>)(.*?)(<iframe )([^>]*)(></iframe>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "$1$2$3$4$5$6<div class=\"embedModuleWrapperClass\" style=\"position: relative;\">$7$8$9</div>"

    .line 217
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 221
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(?s)(<li )(.*)(module-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")([^>])(>)(.*?)(<iframe )([^>]*)(></iframe>)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "$1$2$3$4$5$6<div class=\"embedModuleWrapperClass\" style=\"position: relative;\"><div style=\"position: absolute; top: 0; left: 0; width:100%; height:100%\" onclick=\"alert(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    .line 225
    invoke-virtual {v3}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'); return false\"></div>$7$8$9</div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fixHTMLContent(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getModules()Ljava/util/List;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getHTML()Ljava/lang/String;

    move-result-object v1

    .line 181
    const/4 v0, 0x0

    .line 182
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    .line 183
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->getType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v5

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v5, v2, v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixImageModuleLayout(Ljava/lang/String;Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;I)Ljava/lang/String;

    move-result-object v1

    move v0, v3

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 193
    goto :goto_0

    .line 185
    :cond_0
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->getType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 186
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    invoke-direct {p0, v2, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixEmbedModuleLayout(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    move-object v1, v2

    goto :goto_1

    .line 187
    :cond_1
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->getType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 188
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;

    .line 189
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixVideoModuleLayout(Ljava/lang/String;Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    move-object v1, v2

    .line 190
    goto :goto_1

    :cond_2
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->AUDIO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->getType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v5

    if-ne v3, v5, :cond_4

    .line 191
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;

    invoke-direct {p0, v2, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixAudioModuleLayout(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    move-object v1, v2

    goto :goto_1

    .line 194
    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private fixImageModuleLayout(Ljava/lang/String;Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->isDownloadHD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getHDSrcUrl()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(?s)(<li )(.*?)(module-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")([^>])(>)(<img )(.*?)(src=\\\"[^\\\"]*\")([^>]*?)(>)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "$1$2$3$4$5<a href=\"#\" onClick=\"alert(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    .line 285
    invoke-virtual {v3}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'); return false\"><img src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "style=\"float:none;min-width:725px;height:auto;margin-left:-53px;margin-right:0px\" $7"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "></a>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0

    .line 281
    :cond_0
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getSrcUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const-string/jumbo v0, "$7$9"

    goto :goto_1
.end method

.method private fixVideoModuleLayout(Ljava/lang/String;Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 242
    .line 243
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->getEmbedHTML()Ljava/lang/String;

    move-result-object v2

    .line 245
    const-string/jumbo v0, ""

    .line 246
    const-string/jumbo v1, "width=\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 247
    if-ltz v1, :cond_0

    .line 248
    add-int/lit8 v1, v1, 0x7

    .line 249
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 250
    if-lez v3, :cond_0

    .line 251
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    const-string/jumbo v1, ""

    .line 256
    const-string/jumbo v3, "height=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 257
    if-ltz v3, :cond_1

    .line 258
    add-int/lit8 v3, v3, 0x8

    .line 259
    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 260
    if-lez v4, :cond_1

    .line 261
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 265
    :cond_1
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->getImageSrc()Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(?s)(<li )(.*)(module-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")([^>])(>)(.*?)(<object )(.*?)(</object>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "$1$2$3$4$5<a class=\"videoModuleWrapperClass\" href=\"#\" onClick=\"alert(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    .line 268
    invoke-virtual {v5}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 269
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->getVideoSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'); return false\"><div style=\"position: relative\"><img style=\"position: relative;\" width=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\" height=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"/><img style=\"position: absolute; top: 39%; left: 43%; z-index: 1;\" src=\'file:///android_asset/flash_play_button.png\'/></div></a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method private getProjectDetails(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v1, "project_id"

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->getProjectID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "{server_root_url}/v2/projects/{project_id}/html?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Get project details url - %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Get project details response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 144
    new-instance v0, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;

    invoke-direct {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;-><init>()V

    .line 145
    const-string/jumbo v2, "project"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseProjectWithDetails(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "Project not found"

    invoke-direct {v1, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 165
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid server response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem getting Project details from server"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v1, v5}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 158
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem getting Project details from server"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 163
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_1
.end method

.method private saveProjectHTML(Ljava/lang/String;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 297
    const/4 v2, 0x0

    .line 298
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getLayoutHTMLPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->getAppStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 302
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Trying to create temp folder. [Project id - %s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Creating HTML Root folder folder. [Folder Path is - %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 307
    if-nez v2, :cond_1

    .line 308
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Error Trying to create temp folder. [Path is - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 310
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v3, "Could not create temp folder"

    invoke-direct {v2, v3}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-eqz p1, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html><head><meta name=\"viewport\" content=\"width=100%\" /><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/final.css\"/><style type=\"text/css\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCustomCSS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</style><style type=\"text/css\">* {\n-webkit-tap-highlight-color: rgba(0, 92, 255, .4);\n-webkit-tap-highlight-color: #66005cff;\n}</style><script type=\"text/javascript\" src=\"file:///android_asset/combined.js\"></script><script type=\"text/javascript\">function pauseAllActiveAudio() { $(\'audio\').each(function() {if(!this.paused){this.pause();}}); }</script></head><body class=\"no-padding project-view project-styles\"><div id=\"site-container\"><div id=\"site-columns\" class=\"grid-wrap cfix\"><div id=\"site-left-column\"><div id=\"primary-content\" class=\"ui-corner-all no-level-2-nav cfix\"><div id=\"primary-project-content\" class=\"project-styles\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    invoke-direct {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->createAppreciateDivInHTML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</div></div></div></div></div><script type=\"text/javascript\">$(document).ready(function() { if (-1 != window.location.href.indexOf(\'?connection=false\')) { $(\'.embedModuleWrapperClass\').css(\'visibility\', \'hidden\'); $(\'.videoModuleWrapperClass\').css(\'visibility\', \'hidden\'); $(\'.audioModuleWrapperClass\').css(\'visibility\', \'hidden\'); } });</script></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 333
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 335
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 336
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :goto_1
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 340
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v3, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v4, "HTML File not found"

    invoke-direct {v3, v4}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 341
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem saving project HTML. [project id - %s] [temp dir - %s]"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 343
    :goto_2
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 344
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v3, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v4, "Problem saving project HTML"

    invoke-direct {v3, v4}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 345
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "IOProblem saving project HTML. [project id - %s] [temp dir - %s]"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    .line 345
    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 347
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 348
    :goto_3
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 349
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v3, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v4, "Problem saving project HTML"

    invoke-direct {v3, v4}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 350
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unkown problem saving project HTML. [project id - %s] [temp dir - %s]"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    if-eqz v2, :cond_3

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v5, v8

    .line 350
    invoke-interface {v3, v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 351
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_4

    .line 347
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 342
    :catch_4
    move-exception v0

    goto :goto_2

    .line 338
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    new-instance v0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    .line 83
    :try_start_0
    array-length v0, p1

    if-eq v0, v4, :cond_0

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "Params are required"

    invoke-direct {v1, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 86
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    .line 123
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$1;)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    invoke-direct {p0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->getProjectDetails(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    goto :goto_0

    .line 102
    :cond_1
    if-eqz v1, :cond_3

    .line 103
    invoke-direct {p0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->fixAndSaveHTML(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 104
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 108
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAppreciatedByUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getAppreciatedByUserOn()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUserOn(J)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem getting Project details from server"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v1, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 116
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem getting Project details from server"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;->onGetProjectDetailsAsyncTaskFailure(Ljava/lang/Exception;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-interface {v1, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;->onGetProjectDetailsAsyncTaskSuccess(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
