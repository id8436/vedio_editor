package com.google.gdata.data.projecthosting;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectSummaryEntry extends BaseEntry<ProjectSummaryEntry> {
    public ProjectSummaryEntry() {
    }

    public ProjectSummaryEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ProjectSummaryEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ProjectSummaryEntry.class, Description.class);
            extensionProfile.declare(ProjectSummaryEntry.class, IssuesLink.getDefaultDescription(false, true));
            extensionProfile.declare(ProjectSummaryEntry.class, ProjectLabel.getDefaultDescription(false, true));
            extensionProfile.declare(ProjectSummaryEntry.class, Repository.getDefaultDescription(false, true));
            new Repository().declareExtensions(extensionProfile);
        }
    }

    public Description getDescription() {
        return (Description) getExtension(Description.class);
    }

    public void setDescription(Description description) {
        if (description == null) {
            removeExtension(Description.class);
        } else {
            setExtension(description);
        }
    }

    public boolean hasDescription() {
        return hasExtension(Description.class);
    }

    public List<ProjectLabel> getProjectLabels() {
        return getRepeatingExtension(ProjectLabel.class);
    }

    public void addProjectLabel(ProjectLabel projectLabel) {
        getProjectLabels().add(projectLabel);
    }

    public boolean hasProjectLabels() {
        return hasRepeatingExtension(ProjectLabel.class);
    }

    public List<Repository> getRepositories() {
        return getRepeatingExtension(Repository.class);
    }

    public void addRepository(Repository repository) {
        getRepositories().add(repository);
    }

    public boolean hasRepositories() {
        return hasRepeatingExtension(Repository.class);
    }

    public Link getRelatedLink() {
        return getLink(ILink.Rel.RELATED, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ProjectSummaryEntry " + super.toString() + "}";
    }
}
