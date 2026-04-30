.class public Lcom/behance/sdk/dto/parser/BehanceSDKTextSelectionStateParser;
.super Ljava/lang/Object;
.source "BehanceSDKTextSelectionStateParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseState(Ljava/lang/String;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 23
    new-instance v1, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    invoke-direct {v1}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;-><init>()V

    .line 24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "color"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "rgb("

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ")"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    const-string/jumbo v3, "\\s*,\\s*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 29
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setColor(I)V

    .line 31
    :cond_0
    const-string/jumbo v0, "bold"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setBold(Z)V

    .line 32
    const-string/jumbo v0, "italic"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setItalic(Z)V

    .line 33
    const-string/jumbo v0, "underline"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setUnderline(Z)V

    .line 34
    const-string/jumbo v0, "upper"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setUppercased(Z)V

    .line 35
    const-string/jumbo v0, "removeStyle"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setStyleRemoveable(Z)V

    .line 36
    const-string/jumbo v0, "size"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "px"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setSizePX(I)V

    .line 37
    const-string/jumbo v0, "link"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setLink(Z)V

    .line 38
    const-string/jumbo v0, "style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setStyle(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V

    .line 39
    const-string/jumbo v0, "font"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    const-string/jumbo v3, "\\s*,\\s*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->fromPartialName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setFont(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V

    .line 45
    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getFont()Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    :cond_2
    :goto_0
    const-string/jumbo v0, "left"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    .line 57
    :cond_3
    :goto_1
    return-object v1

    .line 49
    :cond_4
    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setFont(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V

    goto :goto_0

    .line 53
    :cond_5
    const-string/jumbo v0, "center"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto :goto_1

    .line 55
    :cond_6
    const-string/jumbo v0, "right"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->setAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto :goto_1
.end method
