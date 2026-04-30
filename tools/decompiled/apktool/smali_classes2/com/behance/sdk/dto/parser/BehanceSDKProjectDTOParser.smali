.class public Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDTOParser.java"


# static fields
.field private static final ProjectTextModuleCaptionDefaultFontSize:F = 13.0f

.field private static final ProjectTextModuleCaptionDefaultFontSizeV5:F = 11.0f

.field private static final ProjectTextModuleDefaultFontSize:F = 12.0f

.field private static final ProjectTextModuleDefaultFontSizeV5:F = 14.0f

.field private static final ProjectTextModuleDefaultLineHeight:Ljava/lang/String; = "1.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    if-nez p2, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_family"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_weight"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string/jumbo v1, "text_align"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text-align: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text_align"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_1
    const-string/jumbo v1, "line_height"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "em"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line-height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line_height"

    const-string/jumbo v2, "1.4"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "em"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_2
    const-string/jumbo v1, "font_size"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_size"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text-decoration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text_decoration"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-style:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_style"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_4

    const-string/jumbo v0, "block;\n"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 371
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "font-family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_family"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_weight"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text-align: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text_align"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line-height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line_height"

    const-string/jumbo v2, "1.4"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "em"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_size"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text-decoration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text_decoration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-style:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "display: block;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private buildDividerCSS(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    if-eqz p1, :cond_0

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    .line 394
    :cond_1
    const-string/jumbo v0, "p.divider {\n"

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font_size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line-height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "line_height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border-color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "margin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border-width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border_width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border-style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " none none none;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private buildProjectStylesDTO(Lorg/json/JSONObject;I)Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;
    .locals 8

    .prologue
    const/4 v5, 0x5

    const/4 v7, 0x1

    .line 317
    if-nez p1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 319
    :cond_0
    new-instance v2, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-direct {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;-><init>()V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "background"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "color"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setBgColor(I)V

    .line 321
    const-string/jumbo v0, "background"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_1

    .line 323
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setBgImageUrl(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "repeat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setBgImageRepeat(Z)V

    .line 326
    :cond_1
    const-string/jumbo v1, ""

    .line 327
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 328
    if-eqz v4, :cond_2

    .line 329
    if-lt p2, v5, :cond_3

    const/high16 v0, 0x41600000    # 14.0f

    move v3, v0

    .line 330
    :goto_1
    if-lt p2, v5, :cond_4

    const/high16 v0, 0x41300000    # 11.0f

    .line 331
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".title"

    const-string/jumbo v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".sub-title"

    const-string/jumbo v6, "subtitle"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "div, p, .main-text"

    const-string/jumbo v6, "paragraph"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".caption"

    const-string/jumbo v6, "caption"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0, v7}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "a"

    const-string/jumbo v6, "link"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Ljava/lang/String;Lorg/json/JSONObject;FZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".underline {\ndisplay: inline;\ntext-decoration: underline;\n}\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".italic {\ndisplay: inline;\nfont-weight: italic;\n}\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ".bold {\ndisplay: inline;\nfont-weight: bold;\n}\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "body {\nmargin: 0;\n}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setTitleCSS(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v5, "subtitle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setSubTitleCSS(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v5, "paragraph"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setMainTextCSS(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v5, "caption"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setCaptionCSS(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v0, "link"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildCSSProperty(Lorg/json/JSONObject;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setLinkCSS(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "{\ndisplay: block;\ntext-decoration: underline;\n}"

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setUnderlineCSS(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 348
    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setCustomCSS(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v0, "dividers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildDividerCSS(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setDividerCSS(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "spacing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "project"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "top_margin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setProjectMarginTop(I)V

    .line 352
    const-string/jumbo v1, "modules"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "bottom_margin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->setModuleMarginBottom(I)V

    move-object v0, v2

    .line 353
    goto/16 :goto_0

    .line 329
    :cond_3
    const/high16 v0, 0x41400000    # 12.0f

    move v3, v0

    goto/16 :goto_1

    .line 330
    :cond_4
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_2
.end method

.method private isProjectPublic(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "privacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseEditorProject(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-eqz p0, :cond_7

    .line 152
    new-instance v3, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-direct {v3}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;-><init>()V

    .line 153
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setId(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setName(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "covers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectCovers(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCovers(Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;)V

    .line 156
    const-string/jumbo v0, "mature_content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setMatureContent(Z)V

    .line 157
    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setDescription(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "allow_comments"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setAllowComments(Z)V

    .line 159
    const-string/jumbo v0, "tools"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKTagParser;->parse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setTools(Ljava/util/List;)V

    .line 160
    const-string/jumbo v0, "copyright"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "license"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getCopyrightOptionFromValue(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "styles"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "background"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "color"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setBackgroundColor(I)V

    .line 164
    const-string/jumbo v0, "fields"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_2

    move v0, v2

    .line 166
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 167
    new-instance v4, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-direct {v4}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addField(Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 156
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 158
    goto :goto_1

    .line 173
    :cond_2
    const-string/jumbo v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_3

    move v0, v2

    .line 175
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 176
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addTag(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 180
    :cond_3
    const-string/jumbo v0, "owners"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_4

    .line 182
    new-instance v4, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;

    invoke-direct {v4}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;-><init>()V

    move v0, v2

    .line 183
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 184
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->parse(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addOwner(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 188
    :cond_4
    const-string/jumbo v0, "modules"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_6

    move v0, v2

    .line 190
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 191
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getEditProjectModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    move-result-object v4

    .line 192
    if-eqz v4, :cond_5

    .line 193
    invoke-virtual {v4, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->setNewModule(Z)V

    .line 194
    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 190
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move-object v0, v3

    .line 200
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private parseJustProjects(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKProjectParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    invoke-direct {p0, v2}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->isProjectPublic(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    .line 84
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectDetails(Lorg/json/JSONObject;Z)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[Invalid Project]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_2
    return-object v1
.end method

.method private populateProjectCopyright(Lorg/json/JSONObject;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;-><init>()V

    .line 310
    const-string/jumbo v1, "license"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->setLicenseType(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->setLicenseDescription(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setCopyright(Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;)V

    .line 314
    :cond_0
    return-void
.end method

.method private static populateProjectCovers(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x194

    const/16 v4, 0xe6

    const/16 v3, 0xca

    const/16 v2, 0x73

    .line 267
    if-eqz p0, :cond_0

    .line 268
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;-><init>()V

    .line 269
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->addCoverImages(ILjava/lang/String;)V

    .line 270
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->addCoverImages(ILjava/lang/String;)V

    .line 271
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->addCoverImages(ILjava/lang/String;)V

    .line 272
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->addCoverImages(ILjava/lang/String;)V

    .line 273
    const-string/jumbo v1, "original"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->setOriginalCoverImage(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateProjectDetails(Lorg/json/JSONObject;Z)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-eqz p1, :cond_4

    .line 108
    new-instance v3, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;-><init>()V

    .line 109
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setId(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setName(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "published_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setPublishedDate(J)V

    .line 112
    const-string/jumbo v0, "created_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setCreatedDate(J)V

    .line 113
    const-string/jumbo v0, "modified_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setModifiedDate(J)V

    .line 114
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setUrl(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "privacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setPrivacy(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "covers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectCovers(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setCovers(Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;)V

    .line 117
    const-string/jumbo v0, "stats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectStats(Lorg/json/JSONObject;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 118
    const-string/jumbo v0, "owners"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectOwners(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 119
    invoke-direct {p0, v3, p1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectFields(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;Lorg/json/JSONObject;)V

    .line 120
    if-eqz p2, :cond_3

    .line 121
    const-string/jumbo v0, "mature_access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setMatureAccess(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "mature_content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setMatureContent(Z)V

    .line 124
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setDescription(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "custom_css"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setCustomCSS(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "short_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setShortUrl(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setHTML(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "canvas_width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setCanvasWidth(I)V

    .line 129
    const-string/jumbo v0, "allow_comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAllowComments(Z)V

    .line 131
    const-string/jumbo v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 134
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->addTag(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 129
    goto :goto_1

    .line 138
    :cond_2
    const-string/jumbo v0, "modules"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectModules(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 139
    const-string/jumbo v0, "tools"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectTools(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 140
    const-string/jumbo v0, "features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectFeaturedDetails(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 141
    const-string/jumbo v0, "copyright"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectCopyright(Lorg/json/JSONObject;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 143
    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "editor_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->buildProjectStylesDTO(Lorg/json/JSONObject;I)Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setProjectStyles(Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;)V

    :cond_3
    move-object v0, v3

    .line 147
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private populateProjectFeaturedDetails(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    if-eqz p1, :cond_2

    .line 281
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    new-instance v2, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;

    invoke-direct {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;-><init>()V

    .line 284
    const-string/jumbo v3, "featured_on"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setFeaturedDate(J)V

    .line 285
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setProjectUrl(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v3, "site"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    const-string/jumbo v3, "domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteDomain(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteIcon(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteId(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteKey(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteName(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteUrl(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v3, "network_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setNetworkId(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v3, "ribbon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_0

    .line 298
    const-string/jumbo v3, "image"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteRibbonImage(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v3, "image_2x"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->setSiteRibbonBiggerImage(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual {p2, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->addFeature(Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;)V

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 305
    :cond_2
    return-void
.end method

.method private populateProjectFields(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 204
    const-string/jumbo v0, "fields"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 208
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setFields(Ljava/util/List;)V

    .line 213
    :cond_1
    return-void
.end method

.method private populateProjectModules(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 216
    if-eqz p1, :cond_1

    .line 217
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    invoke-static {v1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectModuleFactory;->getProjectModuleInstance(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->addModule(Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;)V

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private populateProjectOwners(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    new-instance v1, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;

    invoke-direct {v1}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;-><init>()V

    .line 259
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->parse(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->addOwner(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method private populateProjectStats(Lorg/json/JSONObject;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;-><init>()V

    .line 249
    const-string/jumbo v1, "appreciations"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setAppreciationsCount(I)V

    .line 250
    const-string/jumbo v1, "views"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setViewsCount(I)V

    .line 251
    const-string/jumbo v1, "comments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setCommentsCount(I)V

    .line 252
    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setStats(Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;)V

    .line 254
    :cond_0
    return-void
.end method

.method private populateProjectTools(Lorg/json/JSONArray;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    new-instance v3, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;

    invoke-direct {v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;-><init>()V

    .line 234
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->setId(I)V

    .line 235
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->setTitle(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v4, "synonym"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_1

    .line 238
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->setUrl(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v4, "icon_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->setIconUrl(Ljava/lang/String;)V

    .line 241
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {p2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setTools(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public parseJustProjects(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKProjectParseException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseJustProjects(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKProjectParseException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "projects"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0, p2}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Lorg/json/JSONArray;Z)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseProjectWithDetails(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKProjectParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->populateProjectDetails(Lorg/json/JSONObject;Z)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/exception/BehanceSDKProjectParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
