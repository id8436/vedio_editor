.class public Lcom/behance/sdk/util/BehanceSDKProjectEditorEmbedUtils;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorEmbedUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    const-string/jumbo v0, "width=\"(.*?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    :cond_0
    return-object p0
.end method

.method public static setHtmlPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "style="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, ">"

    const-string/jumbo v1, " style=\"position:absolute; top:0; left:0;\">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
