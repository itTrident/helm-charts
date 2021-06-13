# itTrident Kubernetes Helm 📜 Library

Applications of interest, provided by [itTrident DevOps](https://ittrident.com/devops.html), ready to launch on <img src="https://www.vectorlogo.zone/logos/kubernetes/kubernetes-icon.svg" alt="kubernetes" width="16" height="16"/> using <img src="https://cncf-branding.netlify.app/img/projects/helm/icon/color/helm-icon-color.png" alt="helm" width="16" height="16"/> [Helm](https://github.com/helm/helm).

## Prerequisites
- Kubernetes 1.12+
- Helm 3.1.0

## Install Helm

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install) and ensure that the `helm` binary is in the `PATH` of your `SHELL`.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add ittrident https://ittrident.github.io/helm-charts

```

You can then run `helm search repo ittrident` to list the charts.

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
Relevant 📜 documentation is present in their respective **README's**.

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[Apache 2.0 License](https://github.com/itTrident/helm-charts/blob/main/LICENSE).
