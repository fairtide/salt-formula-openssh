linux:
  system:
    enabled: true
    user:
      testusername: &_user
        enabled: true
        name: testusername
        sudo: true
        uid: 9999
        full_name: Test User
        home: /home/testusername
openssh:
  client:
    enabled: true
    user:
      testusername:
        enabled: true
        # Include from linux.system.user structure
        user: *_user
    known_hosts:
    - name: repo.domain.com
      type: rsa
      fingerprint: dd:fa:e8:68:b1:ea:ea:a0:63:f1:5a:55:48:e1:7e:37
    alive:
      interval: 600
      count: 3

