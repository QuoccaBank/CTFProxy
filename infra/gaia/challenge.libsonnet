{
  services: [
    {
      name: 'gaia',
      replicas: 1,
      category: 'infra',
      clustertype: 'master',
      access: |||
        def checkAccess():
          if path.startswith("/api/addtogroup") and user.endswith("@services." + corpDomain):
            grantAccess()
          if user == "ctfproxy@services." + corpDomain:
            grantAccess()
        checkAccess()
      |||,
    },
  ],
}
