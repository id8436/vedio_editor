.class public Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;
.super Ljava/lang/Object;
.source "BehanceSDKTextSelectionState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private bold:Z

.field private color:I

.field private font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field private isLink:Z

.field private italic:Z

.field private sizePX:I

.field private style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

.field private styleRemoveable:Z

.field private underline:Z

.field private uppercased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->alignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->color:I

    return v0
.end method

.method public getFont()Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    return-object v0
.end method

.method public getSizePX()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->sizePX:I

    return v0
.end method

.method public getStyle()Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->bold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->italic:Z

    return v0
.end method

.method public isLink()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->isLink:Z

    return v0
.end method

.method public isStyleRemoveable()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->styleRemoveable:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->underline:Z

    return v0
.end method

.method public isUppercased()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->uppercased:Z

    return v0
.end method

.method public setAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->alignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 83
    return-void
.end method

.method public setBold(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->bold:Z

    .line 35
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->color:I

    .line 75
    return-void
.end method

.method public setFont(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 99
    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->italic:Z

    .line 43
    return-void
.end method

.method public setLink(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->isLink:Z

    .line 67
    return-void
.end method

.method public setSizePX(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->sizePX:I

    .line 91
    return-void
.end method

.method public setStyle(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 107
    return-void
.end method

.method public setStyleRemoveable(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->styleRemoveable:Z

    .line 27
    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->underline:Z

    .line 51
    return-void
.end method

.method public setUppercased(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->uppercased:Z

    .line 59
    return-void
.end method
