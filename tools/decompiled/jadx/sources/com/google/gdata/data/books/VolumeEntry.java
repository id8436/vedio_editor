package com.google.gdata.data.books;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.books.BooksLink;
import com.google.gdata.data.dublincore.Creator;
import com.google.gdata.data.dublincore.Date;
import com.google.gdata.data.dublincore.Description;
import com.google.gdata.data.dublincore.Format;
import com.google.gdata.data.dublincore.Identifier;
import com.google.gdata.data.dublincore.Language;
import com.google.gdata.data.dublincore.Publisher;
import com.google.gdata.data.dublincore.Subject;
import com.google.gdata.data.dublincore.Title;
import com.google.gdata.data.extensions.Comments;
import com.google.gdata.data.extensions.Rating;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(VolumeEntry.KIND)
public class VolumeEntry extends BaseEntry<VolumeEntry> {
    public static final String KIND = "http://schemas.google.com/books/2008#volume";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public VolumeEntry() {
        getCategories().add(CATEGORY);
    }

    public VolumeEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(VolumeEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(VolumeEntry.class, new ExtensionDescription(Comments.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "comments", false, false, false));
            new Comments().declareExtensions(extensionProfile);
            extensionProfile.declare(VolumeEntry.class, Creator.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Date.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Description.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Embeddability.class);
            extensionProfile.declare(VolumeEntry.class, Format.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Identifier.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Language.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, OpenAccess.class);
            extensionProfile.declare(VolumeEntry.class, Publisher.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, new ExtensionDescription(Rating.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "rating", false, false, false));
            extensionProfile.declare(VolumeEntry.class, Review.class);
            extensionProfile.declare(VolumeEntry.class, Subject.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Title.getDefaultDescription(false, true));
            extensionProfile.declare(VolumeEntry.class, Viewability.class);
        }
    }

    public Comments getComments() {
        return (Comments) getExtension(Comments.class);
    }

    public void setComments(Comments comments) {
        if (comments == null) {
            removeExtension(Comments.class);
        } else {
            setExtension(comments);
        }
    }

    public boolean hasComments() {
        return hasExtension(Comments.class);
    }

    public List<Creator> getCreators() {
        return getRepeatingExtension(Creator.class);
    }

    public void addCreator(Creator creator) {
        getCreators().add(creator);
    }

    public boolean hasCreators() {
        return hasRepeatingExtension(Creator.class);
    }

    public List<Date> getDates() {
        return getRepeatingExtension(Date.class);
    }

    public void addDate(Date date) {
        getDates().add(date);
    }

    public boolean hasDates() {
        return hasRepeatingExtension(Date.class);
    }

    public List<Description> getDescriptions() {
        return getRepeatingExtension(Description.class);
    }

    public void addDescription(Description description) {
        getDescriptions().add(description);
    }

    public boolean hasDescriptions() {
        return hasRepeatingExtension(Description.class);
    }

    public Embeddability getEmbeddability() {
        return (Embeddability) getExtension(Embeddability.class);
    }

    public void setEmbeddability(Embeddability embeddability) {
        if (embeddability == null) {
            removeExtension(Embeddability.class);
        } else {
            setExtension(embeddability);
        }
    }

    public boolean hasEmbeddability() {
        return hasExtension(Embeddability.class);
    }

    public List<Format> getFormats() {
        return getRepeatingExtension(Format.class);
    }

    public void addFormat(Format format) {
        getFormats().add(format);
    }

    public boolean hasFormats() {
        return hasRepeatingExtension(Format.class);
    }

    public List<Identifier> getIdentifiers() {
        return getRepeatingExtension(Identifier.class);
    }

    public void addIdentifier(Identifier identifier) {
        getIdentifiers().add(identifier);
    }

    public boolean hasIdentifiers() {
        return hasRepeatingExtension(Identifier.class);
    }

    public List<Language> getLanguages() {
        return getRepeatingExtension(Language.class);
    }

    public void addLanguage(Language language) {
        getLanguages().add(language);
    }

    public boolean hasLanguages() {
        return hasRepeatingExtension(Language.class);
    }

    public OpenAccess getOpenAccess() {
        return (OpenAccess) getExtension(OpenAccess.class);
    }

    public void setOpenAccess(OpenAccess openAccess) {
        if (openAccess == null) {
            removeExtension(OpenAccess.class);
        } else {
            setExtension(openAccess);
        }
    }

    public boolean hasOpenAccess() {
        return hasExtension(OpenAccess.class);
    }

    public List<Publisher> getPublishers() {
        return getRepeatingExtension(Publisher.class);
    }

    public void addPublisher(Publisher publisher) {
        getPublishers().add(publisher);
    }

    public boolean hasPublishers() {
        return hasRepeatingExtension(Publisher.class);
    }

    public Rating getRating() {
        return (Rating) getExtension(Rating.class);
    }

    public void setRating(Rating rating) {
        if (rating == null) {
            removeExtension(Rating.class);
        } else {
            setExtension(rating);
        }
    }

    public boolean hasRating() {
        return hasExtension(Rating.class);
    }

    public Review getReview() {
        return (Review) getExtension(Review.class);
    }

    public void setReview(Review review) {
        if (review == null) {
            removeExtension(Review.class);
        } else {
            setExtension(review);
        }
    }

    public boolean hasReview() {
        return hasExtension(Review.class);
    }

    public List<Subject> getSubjects() {
        return getRepeatingExtension(Subject.class);
    }

    public void addSubject(Subject subject) {
        getSubjects().add(subject);
    }

    public boolean hasSubjects() {
        return hasRepeatingExtension(Subject.class);
    }

    public List<Title> getTitles() {
        return getRepeatingExtension(Title.class);
    }

    public void addTitle(Title title) {
        getTitles().add(title);
    }

    public boolean hasTitles() {
        return hasRepeatingExtension(Title.class);
    }

    public Viewability getViewability() {
        return (Viewability) getExtension(Viewability.class);
    }

    public void setViewability(Viewability viewability) {
        if (viewability == null) {
            removeExtension(Viewability.class);
        } else {
            setExtension(viewability);
        }
    }

    public boolean hasViewability() {
        return hasExtension(Viewability.class);
    }

    public Link getAnnotationLink() {
        return getLink(BooksLink.Rel.ANNOTATION, ILink.Type.ATOM);
    }

    public Link getAtomAlternateLink() {
        return getLink("alternate", ILink.Type.ATOM);
    }

    public Link getEpubDownloadLink() {
        return getLink(BooksLink.Rel.EPUBDOWNLOAD, BooksLink.Type.EPUB);
    }

    public Link getInfoLink() {
        return getLink(BooksLink.Rel.INFO, ILink.Type.HTML);
    }

    public Link getPreviewLink() {
        return getLink(BooksLink.Rel.PREVIEW, ILink.Type.HTML);
    }

    public Link getThumbnailLink() {
        return getLink(BooksLink.Rel.THUMBNAIL, (String) null);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{VolumeEntry " + super.toString() + "}";
    }
}
